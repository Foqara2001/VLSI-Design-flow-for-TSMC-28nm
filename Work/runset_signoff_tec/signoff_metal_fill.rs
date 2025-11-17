#include "metal_fill_params.rh"
#include METAL_FILL_USER_RUNSET

// End Of User Runset Code

// Revert back to original definition of write_ndm
#undef write_ndm

if (smf_metal_fill_flatten)
{
    smf_flatten_fill_layers_and_disable_compression();
} else {
    smf_flatten_existing_cell_hierarchy();
}

#ifdef INDESIGN_ENABLE_TCD_FILL
smf_tcd_flatten_fill_layers();
#endif

smf_save_compress_info(); // required for fix-density-flow to re-create hierarchy

smf_remove_floating_vias();

// Write NDM or GDS
#ifdef INDESIGN_WRITE_ONLY_GDS
smf_write_gds_core();
#else
smf_write_ndm();
#endif
