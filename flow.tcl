lappend search_path scripts design_data 
set_host_options -max_cores 8
set TECH_FILE "/data/tsmc/28HPCPMMWAVE/synopsys/tsmcn28_9lm6X1Z1URDL.tf"

#######################################################################
## Physical Library Settings
#######################################################################
create_lib -technology $TECH_FILE -ref_libs {
    /data/tsmc/28HPCPMMWAVE/synopsys/libs/tcbn28hpcplusbwp30p140.ndm
    /data/tsmc/28HPCPMMWAVE/synopsys/libs/tcbn28hpcplusbwp30p140hvt.ndm
    /data/tsmc/28HPCPMMWAVE/synopsys/libs/tcbn28hpcplusbwp30p140lvt.ndm
} RISCV1.dlib



open_lib RISCV1.dlib
report_ref_libs


# Parasitic Tech Files
read_parasitic_tech -tlup /data/tsmc/28HPCPMMWAVE/dig_libs/snpsflow/rcbest/crn28hpc+_1p09m+ut-alrdl_6x1z1u_rcbest.tluplus -name rcbest

read_parasitic_tech -tlup /data/tsmc/28HPCPMMWAVE/dig_libs/snpsflow/rcworst/crn28hpc+_1p09m+ut-alrdl_6x1z1u_rcworst.tluplus -name rcworst

save_lib
set_svf ./guidFM/riscv_core1.svf
#######################################################################
## Analyze and elaborate RTL
#######################################################################
analyze -format sverilog [glob rtl/*.v]
elaborate riscv_core
set_top_module riscv_core

start_gui
save_block -as RISCV1/elaborate

read_tech_lef -merge_action overwrite  "/data/tsmc/28HPCPMMWAVE/synopsys/tsmcn28_9lm6X1Z1UUTRDL.tlef"

#######################################################################
## MCMM setup
#######################################################################
# Remove all MCMM related info
remove_corners -all
remove_modes -all
remove_scenarios -all
remove_pin_blockages -all 

# Create Corners
create_corner Fast
create_corner Typical
create_corner Slow

# Set parasitics parameters
set_parasitics_parameters -early_spec rcbest -late_spec rcbest -corners {Fast}
set_parasitics_parameters -early_spec rcbest -late_spec rcbest -corners {Typical}
set_parasitics_parameters -early_spec rcworst -late_spec rcworst -corners {Slow}

#create mode
create_mode FUNC
current_mode FUNC

#create scenarios
create_scenario -mode FUNC -corner Fast -name FUNC_Fast
create_scenario -mode FUNC -corner Typical -name FUNC_Typical
create_scenario -mode FUNC -corner Slow -name FUNC_Slow


current_scenario FUNC_Fast
source riscv.sdc

current_scenario FUNC_Typical
source riscv.sdc

current_scenario FUNC_Slow
source riscv.sdc


#######################################################################
## Floorplan and Implementation
#######################################################################
set_auto_floorplan_constraints -core_utilization 0.6 -side_ratio {1 1} -core_offset 2

# Setup application options
set_app_options -name place.coarse.continue_on_missing_scandef -value true

# Check the design before compile_fusion
compile_fusion -check_only

# initial_map stage
compile_fusion -to initial_map

# logic_opto stage
compile_fusion -from logic_opto -to logic_opto

#set pins
set_app_options -name compile.auto_floorplan.place_pins -value all

# Pin placement constraints
set ports [remove_from_collection [get_ports] {VDD VSS}]

report_block_pin_constraints -self

place_pins -use_existing_routing -self

# initial_place stage
compile_fusion -from initial_place -to initial_place

# initial_drc stage
compile_fusion -from initial_drc -to initial_drc

# initial_opto stage
compile_fusion -from initial_opto -to initial_opto

# final_place stage
compile_fusion -from final_place -to final_place

# final_opto stage
compile_fusion -from final_opto -to final_opto

check_legality
save_block -as RISCV1/floorplan
#######################################################################
## top_placed_with_tap_and_boundary
#######################################################################
# Insert Boundary cells
create_boundary_cells \
  -left_boundary_cell  tcbn28hpcplusbwp30p140/BOUNDARY_LEFTBWP30P140 \
  -right_boundary_cell tcbn28hpcplusbwp30p140/BOUNDARY_RIGHTBWP30P140 \
  -prefix BOUND

# Insert TAP cells to ensure well and substrate ties
create_tap_cells \
  -lib_cell tcbn28hpcplusbwp30p140/TAPCELLBWP30P140 \
  -distance 60 \
  -pattern stagger \
  -skip_fixed_cells

#Checking legality of placement
legalize_placement -incremental
check_legality

save_block -as RISCV1/top_placed_with_tap_and_boundary


#######################################################################
## Export Netlist for Formality
#######################################################################
file mkdir ./netlist
write_verilog -hierarchy all ./netlist/riscv_core_syn.v

#######################################################################
## Save SVF for Formality
#######################################################################
set_svf -off
#######################################################################
## Power Network for 28nm Technology
#######################################################################
####remove all old defination
remove_pg_via_master_rules -all
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all
remove_routes -ring -stripe -lib_cell_pin_connect
#### Set PG net attribute
set_attribute -objects [get_nets VDD] -name net_type -value power
set_attribute -objects [get_nets VSS] -name net_type -value ground
#### Create VIA strategy rule VIA_NIL
set_pg_strategy_via_rule VIA_NIL -via_rule { {intersection: undefined} {via_master: NIL} }
#### Create PG Rails for standard cells
create_pg_std_cell_conn_pattern M1_rail -layers {M1} -rail_width {@wtop @wbottom} -parameters {wtop wbottom}
#### Connect all cess to pg nets 
connect_pg_net -automatic
####  set the PG strategy for M1 cells straps
set_pg_strategy M1_rail_strategy_pwr -core -pattern {{name: M1_rail} {nets: VDD} {parameters: {0.150 0.150}}}
set_pg_strategy M1_rail_strategy_gnd -core -pattern {{name: M1_rail} {nets: VSS} {parameters: {0.150 0.150}}}
####  create pg for the cells on the rows
compile_pg -strategies M1_rail_strategy_pwr -ignore_drc
compile_pg -strategies M1_rail_strategy_gnd -ignore_drc
### Create M5 Veritacl PG Straps
create_pg_mesh_pattern M5_PG         -layers { {vertical_layer: M5}   {width: 1.6} {spacing: interleaving} {pitch: 16} {offset: 4.0} }
set_pg_strategy M5_PG_Strategy         -core         -pattern   { {name: M5_PG} {nets:{VSS VDD}} }         -extension { {stop: core_boundary} }
compile_pg -strategies {M5_PG_Strategy} -via_rule VIA_NIL
#### Create M6 Horizontal PG Straps
create_pg_mesh_pattern M6_PG         -layers { {horizontal_layer: M6}   {width: 1.6} {spacing: interleaving} {pitch: 16} {offset: 4.0} }
set_pg_strategy M6_PG_Strategy         -core         -pattern   { {name: M6_PG} {nets:{VSS VDD}} }         -extension { {stop: design_boundary_and_generate_pin} }
compile_pg -strategies {M6_PG_Strategy} -via_rule VIA_NIL
###### create vias to connect all pg nets
create_pg_vias -nets VSS -from_layers M1 -to_layers M5
create_pg_vias -nets VDD -from_layers M1 -to_layers M5
create_pg_vias -nets VDD -from_layers M5 -to_layers M6
create_pg_vias -nets VSS -from_layers M5 -to_layers M6

### ========================================
###  Connect Pins to PG Nets
### ========================================
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

### ========================================
###  Verify Before Continue
### ========================================
legalize_placement
check_pg_connectivity
check_pg_drc

### ========================================
### Resume Flow
### ========================================
compile_fusion -from logic_opto -to final_opto

save_block -as RISCV1/pg
#####################################################################
### Placement and Optimization	
#####################################################################
# Setup application options
set_app_options -name place.coarse.continue_on_missing_scandef -value true
set_app_options -name place_opt.final_place.effort -value high
set_app_options -name place_opt.place.congestion_effort -value high
set_app_options -name opt.common.user_instance_name_prefix -value place_opt

#### compile_fusion to initial_opto stage to get the design ready for placement and optimization
compile_fusion -to initial_opto

#### Classic place_opt flow

# create coarse placement
reset_placement

create_placement \
	-timing_driven \
	-congestion \
	-congestion_effort medium \
	-buffering_aware_timing_driven

legalize_placement 

# place_opt
place_opt

# Analyze the design
check_legality 
report_congestion 
report_utilization

#### Unified place_opt flow
reset_placement

compile_fusion -to final_opto

# Analyze the design
check_legality 
report_congestion 
report_utilization
check_legality 
legalize_placement -incremental

#### Connect PG nets
connect_pg_net -net VDD [get_pins -hierarchical  */VDD]
connect_pg_net -net VSS [get_pins -hierarchical  */VSS]

# Analyze the design
check_legality 
report_congestion 
report_utilization

save_block -as RISCV1/Placement

#####################################################################
###Clock Tree Synthesis			
#####################################################################
# Create NDR rule
create_routing_rule CLK_NDR \
	-default_reference_rule \
	-multiplier_width 2 \
	-spacings {M2 0.052 M3 0.052 M4 0.08 M5 0.08} \
	-shield \
	-shield_spacings {M2 0.026 M3 0.026 M4 0.04 M5 0.04} \
	-snap_to_track 
# Define minimum and maximum clock routing layer
set_clock_routing_rules -rules CLK_NDR \
	-min_routing_layer M2 \
	-max_routing_layer M5

#### Set targer skew value
set_clock_tree_options -clocks [all_clocks] \
	-target_skew 0.1
	 
#### clock_opt flow
get_clocks

# List the stages of clock_opt command
clock_opt -list_only

# Synthesize and optimize the clock tree
clock_opt -to build_clock

# Detail routing of clock
clock_opt -from build_clock -to route_clock 

# Optimization and legalization
clock_opt -to final_opto

# Remove global routes to review the clock tree
remove_routes -global_route 

#### Clock shielding with VSS
set clock_nets [get_nets -hierarchical -filter "net_type == clock"]
create_shields -nets ${clock_nets} -with_ground VSS

#### Connect PG nets
connect_pg_net -net VDD [get_pins -hierarchical  */VDD]
connect_pg_net -net VSS [get_pins -hierarchical  */VSS]

# Analyze the design
check_legality 
report_congestion 
report_utilization

get_blocks -all
list_blocks
save_lib
save_block -as RISCV1/CTS

#####################################################################
###  Routing				
#####################################################################

# Setup application options
set_app_options -name route.global.force_rerun_after_global_route_opt -value true
set_app_options -name route.global.timing_driven -value true
set_app_options -name route.track.timing_driven -value true
set_app_options -name route.detail.timing_driven -value true

##### TS22 routing options
set_app_options -name route.common.connect_within_pins_by_layer_name -value {{M1 via_wire_standard_cell_pins} {M2 off} {M3 off} {M4 off} {M5 off} {M6 off} {M7 off} {M8 off} }
set_app_options -name route.common.net_max_layer_mode -value allow_pin_connection
set_app_options -name route.common.global_max_layer_mode -value allow_pin_connection
set_app_options -name route.common.net_min_layer_mode -value soft
set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection
set_app_options -name route.common.number_of_vias_under_net_min_layer -value 5
set_app_options -name route.common.number_of_vias_over_net_max_layer -value 5
set_app_options -name route.common.number_of_vias_over_global_max_layer -value 5
set_app_options -name route.common.rotate_default_vias -value false
set_app_options -name route.common.route_top_boundary_mode -value stay_half_min_space_inside
set_app_options -name route.common.shielding_nets -value {}
set_app_options -name route.common.soft_rule_weight_to_effort_level_map -value {}
set_app_options -name route.common.threshold_noise_ratio -value 0.20
set_app_options -name route.common.via_array_mode -value off

# Routing constraint
set_ignored_layers \
	-min_routing_layer M1 \
	-max_routing_layer M6
#### Routing flow
sizeof_collection [get_nets -hierarchical *]
report_ignored_layers
report_scenarios

# Check the design
check_routability

# Global routing
route_global

# Track assignment and net routing
route_track

# Detail routing and DRC fixing
route_detail -max_number_iterations 5

# route_auto command will run above 3 steps

#### Routing optimization
route_opt

#### Add redundant VIAs
add_redundant_vias 

#### ECO routing fix
route_eco
check_pg_drc
#### Check the routing
check_routes
check_lvs

#### Connect PG nets
connect_pg_net -net VDD [get_pins -hierarchical  */VDD]
connect_pg_net -net VSS [get_pins -hierarchical  */VSS]

# Analyze the design
check_legality 
report_congestion 
report_utilization


get_blocks -all
list_blocks

save_block -as RISCV1/Routing
save_lib
#route_auto
####################################################################
# write the GDS file
####################################################################
write_gds -design RISCV1/Routing\
  -layer_map /data/tsmc/28HPCPMMWAVE/dig_libs/PRTF/PRTF_ICC_28nm_Syn_V19_1a/PR_tech/Synopsys/GdsOutMap/gdsout_6X1Z1U.map \
  -keep_data_type \
  -fill include \
  -output_pin all \
  -merge_files { \
    /data/tsmc/28HPCPMMWAVE/dig_libs/TSMCHOME/digital/Back_End/gds/tcbn28hpcplusbwp30p140_110a/tcbn28hpcplusbwp30p140.gds \
    /data/tsmc/28HPCPMMWAVE/dig_libs/TSMCHOME/digital/Back_End/gds/tcbn28hpcplusbwp30p140hvt_110a/tcbn28hpcplusbwp30p140hvt.gds \
    /data/tsmc/28HPCPMMWAVE/dig_libs/TSMCHOME/digital/Back_End/gds/tcbn28hpcplusbwp30p140lvt_110a/tcbn28hpcplusbwp30p140lvt.gds } \
  -long_names \
  -lib_cell_view frame \
  -allow_design_mismatch \
  -units 1000 \
  extracted_data/top.gds

#####################################################################
# add filer cells 
#####################################################################
set fillers [get_cells -filter "ref_name =~ *FILL*"]
puts "Number of filler cells: [sizeof_collection $fillers]"
remove_cell $fillers

create_stdcell_fillers \
  -lib_cells {
    tcbn28hpcplusbwp30p140/FILL64BWP30P140
    tcbn28hpcplusbwp30p140/FILL32BWP30P140
    tcbn28hpcplusbwp30p140/FILL16BWP30P140
    tcbn28hpcplusbwp30p140/FILL8BWP30P140
    tcbn28hpcplusbwp30p140/FILL4BWP30P140
    tcbn28hpcplusbwp30p140/FILL3BWP30P140
    tcbn28hpcplusbwp30p140/FILL2BWP30P140
    tcbn28hpcplusbwp30p140/GFILLBWP30P140
    tcbn28hpcplusbwp30p140/GFILL2BWP30P140
    tcbn28hpcplusbwp30p140/GFILL3BWP30P140
    tcbn28hpcplusbwp30p140/GFILL4BWP30P140
  } \
  -prefix FILLER

check_routes
report_qor
save_block -as RISCV1/filer

#####################################################################
### Signoff				
#####################################################################
#### ICV In-Design Run
set_host_options -target ICV -max_cores 2

set_app_options -name signoff.check_drc.runset -value /data/tsmc/28HPCPMMWAVE/synopsys/ICV/DRC/2.2a/LOGIC_TopMr_DRC/ICVLN28HP_5M_3X1R_002.22a.encrypt
set_app_options -name signoff.check_drc.max_errors_per_rule -value 1000
set_app_options -name signoff.check_drc.run_dir -value "./signoff_drc_run/"
set_app_options -name signoff.physical.layer_map_file -value /data/tsmc/28HPCPMMWAVE/dig_libs/PRTF/PRTF_ICC_28nm_Syn_V19_1a/PR_tech/Synopsys/GdsOutMap/gdsout_6X1Z1U.map

save_block

signoff_check_drc 
 
   

set_app_options -name signoff.fix_drc.init_drc_error_db \
   -value "./signoff_drc_run"

signoff_fix_drc


#### Metla Fil
set_app_options -name signoff.create_metal_fill.runset -value /data/tsmc/28HPCPMMWAVE/synopsys/ICV/Dummy/Metal/2.1b/Dummy_Metal_Via_ICV_28nm.21b
signoff_report_metal_density -output pre_metal_fill_density.rpt
signoff_create_metal_fill -select_layers {M2 M3 M4 M5 M6}
signoff_report_metal_density -output post_metal_fill_density.rpt

#### Analyze the design
check_legality 
report_congestion 
report_utilization
collect_reports chip_finish


###############################################
change_name -rule verilog
write_verilog \
  -hierarchy all \
  -include {pad_cells supply_statements pg_netlist filler_cells} \
  extracted_data/top.v
###############################################

	
