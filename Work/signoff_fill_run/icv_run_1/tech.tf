/******************************************************************************/
/* TSMC N28 P&R technology file                                               */
/******************************************************************************/
/* DESIGN RULE DOCUMENT: T-N28-CL-DR-001 V2.0                                 */
/* DESIGN RULE DOCUMENT: T-N28-CL-DR-002 V1.9_1                               */
/* P&R TECHNOLOGY FILE VERSION: T-N28-CL-PR-002-S1 V1.9_1a                    */
/*                                                                            */
/* Note :                                                                     */
/*       1. Please use ICC F-2011.09-SP2 or later version                     */
/*       2. Please use TLUPlus to get the accurate RC values.                 */
/*       3. ICC G-2012.06-SP5 or later version for implant support            */
/* Revision Histroy :                                                         */
/*       1. 20101117 MxLPC rules                                              */
/*       2. 20101122 new VIAy.S.3 & My.S.8 rules                              */
/*       3. 20110209 add DFM v01 VMA/HOOK/CAP rule                            */
/*       4. 20110318 apply Synopsys VIA Reliability new syntax                */
/*       5. 20110318 refine values in VMA/HOOK/CAP syntax                     */
/*       6. 20110401 New ContactCode apply VIAx.EN.14 & VIAx.EN.15            */
/*       7. 20110429 Remove VIAx.S.6 & VIAx.S.7                               */
/*       8. 20110627 Add rectangular Power VIA PGVIAx_RECT                    */
/*       9. 20110627 Bridge rule support                                      */
/*      10. 20110627 New modeling for WMJ rule                                */
/*      11. 20110627 Update Hook rule for M1/M2                               */
/*      12. 20111212 New support EFP.Mx.EN.1R, VIAx.R.10R, Mx.S.37R           */
/*      13. 20120131 Reorganize DesignRule section                            */
/*      14. 20120305 DFM via revision                                         */
/*                   *FBD20,*FBD30,*PBDB,*PBDU,*PBDE,*FBS25,*PBSB,*PBSU       */
/*      15. 20120305 RV 2x2 is only allowed in plymide process                */
/*                   Please refer to v1.2 design rule RV.W.1                  */
/*                   Set RV default size as 3um x 3um in this TF              */
/*                   If RV 2x2 is required, please let it unmarked,           */
/*                   and let RV 3x3 marked                                    */
/*      16. 20121003 Enhanced M1.EN.4, remove "fatWireViaCornerKeepoutDistTbl"*/
/*      17. 20130604 Add implant layer VT*                                    */
/*      18. 20130828 VIAu.R enhancement for ICC 2013                          */
/*      19. 20130905 Turn off Metal bridge rule EFP.M1/Mx.S.5~7               */
/*      20. 20140429 Update RMS/PEAK EM                                       */
/*      21. 20190618 Add NW/PW layers                                         */
/******************************************************************************/

Technology {
	unitTimeName		= "ns"
	timePrecision		= 1000
	unitLengthName		= "micron"
	unitVoltageName		= "v"
	voltagePrecision	= 100000
	unitCurrentName		= "mA"
	currentPrecision	= 100
	unitPowerName		= "mw"
	powerPrecision		= 1000
	unitResistanceName	= "ohm"
	resistancePrecision	= 10000000
	unitCapacitanceName	= "pf"
	capacitancePrecision	= 10000000
	unitInductanceName	= "nh"
	inductancePrecision	= 100
	fatWireExtensionMode	= 1
	minEdgeMode		= 1
	minAreaMode		= 1
	maxStackLevelMode	= 2
	cornerSpacingMode	= 0
	name			= "TSMC N28 SP9M6X1Z1URDL HVH TCBN28"
	date			= "Aug 19 2019"
	dielectric		= 4e-05
	lengthPrecision		= 1000
	gridResolution		= 5
	minBaselineTemperature	= 25
	nomBaselineTemperature	= 25
	maxBaselineTemperature	= 25
}
Color 14 {
	name			= 14
	rgbDefined		= 1
	redIntensity		= 0
	greenIntensity		= 255
	blueIntensity		= 190
}
Color 18 {
	name			= 18
	rgbDefined		= 1
	redIntensity		= 90
	greenIntensity		= 0
	blueIntensity		= 190
}
Color 19 {
	name			= 19
	rgbDefined		= 1
	redIntensity		= 90
	greenIntensity		= 0
	blueIntensity		= 255
}
Color 27 {
	name			= 27
	rgbDefined		= 1
	redIntensity		= 90
	greenIntensity		= 175
	blueIntensity		= 255
}
Color 28 {
	name			= 28
	rgbDefined		= 1
	redIntensity		= 90
	greenIntensity		= 255
	blueIntensity		= 0
}
Color 34 {
	name			= 34
	rgbDefined		= 1
	redIntensity		= 180
	greenIntensity		= 0
	blueIntensity		= 190
}
Color 43 {
	name			= 43
	rgbDefined		= 1
	redIntensity		= 180
	greenIntensity		= 175
	blueIntensity		= 255
}
Color 49 {
	name			= 49
	rgbDefined		= 1
	redIntensity		= 255
	greenIntensity		= 0
	blueIntensity		= 100
}
Color 58 {
	name			= 58
	rgbDefined		= 1
	redIntensity		= 255
	greenIntensity		= 175
	blueIntensity		= 190
}
Color 59 {
	name			= 59
	rgbDefined		= 1
	redIntensity		= 255
	greenIntensity		= 175
	blueIntensity		= 255
}
Tile "unit" {
	width			= 0.14
	height			= 0.9
}
Layer "PW" {
	layerNumber		= 2
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "magenta"
	lineStyle		= "dash"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "NW" {
	layerNumber		= 3
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "magenta"
	lineStyle		= "dash"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "OD" {
	layerNumber		= 6
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "19"
	lineStyle		= "solid"
	pattern			= "enter"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "PO" {
	layerNumber		= 17
	maskName		= "poly"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "49"
	lineStyle		= "solid"
	pattern			= "solid"
	pitch			= 0
	defaultWidth		= 0.03
	minWidth		= 0.03
	minSpacing		= 0.08
	isDefaultLayer		= 1
}
Layer "PP" {
	layerNumber		= 25
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "14"
	lineStyle		= "dash"
	pattern			= "slash"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "NP" {
	layerNumber		= 26
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "34"
	lineStyle		= "dash"
	pattern			= "slash"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "CO" {
	layerNumber		= 30
	maskName		= "polyCont"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "27"
	lineStyle		= "solid"
	pattern			= "solid"
	pitch			= 0
	defaultWidth		= 0.04
	minWidth		= 0.04
	minSpacing		= 0.07
	isDefaultLayer		= 1
}
Layer "VTL_N" {
	layerNumber		= 12
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTL_P" {
	layerNumber		= 13
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTUL_N" {
	layerNumber		= 151
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTUL_P" {
	layerNumber		= 152
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTH_N" {
	layerNumber		= 67
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTH_P" {
	layerNumber		= 68
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTUH_N" {
	layerNumber		= 93
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "VTUH_P" {
	layerNumber		= 94
	maskName		= "implant"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	minWidth		= 0.27
	minSpacing		= 0.27
}
Layer "M1" {
	layerNumber		= 31
	maskName		= "metal1"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "cyan"
	lineStyle		= "solid"
	pattern			= "dot"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.06
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 6
	fatTblThreshold		= (0, 0.101, 0.181, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.0115
	specialMinAreaTblSize	= 2
	minAreaEdgeThresholdTbl	= (0.13, 0.2)
	specialMinAreaTbl	= (0.038, 0.014)
	minAreaFillMinLengthTbl	= (0.13, 0.2)
	minAreaFillMinWidthTbl	= (0.05, 0.05)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.07
	endOfLine2NeighborMod1SideKeepoutWidth = 0.12
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	minEdgeLengthCheckConcaveCorner = 1
	minEdgeLength2MaxWireWidth = 0.055
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
}
Layer "M2" {
	layerNumber		= 32
	maskName		= "metal2"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.135
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.014
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	minEdgeLengthCheckConcaveCorner = 1
	minEdgeLength2MaxWireWidth = 0.055
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
}
Layer "M3" {
	layerNumber		= 33
	maskName		= "metal3"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "red"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.017
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
	minEdgeJogWireMinWidth	= 0.06
	minEdgeJogWireMinLength	= 0.12
	minEdgeJogMinHeight	= 0.05
}
Layer "M4" {
	layerNumber		= 34
	maskName		= "metal4"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "green"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.017
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
	minEdgeJogWireMinWidth	= 0.06
	minEdgeJogWireMinLength	= 0.12
	minEdgeJogMinHeight	= 0.05
}
Layer "M5" {
	layerNumber		= 35
	maskName		= "metal5"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "magenta"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.017
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
	minEdgeJogWireMinWidth	= 0.06
	minEdgeJogWireMinLength	= 0.12
	minEdgeJogMinHeight	= 0.05
}
Layer "M6" {
	layerNumber		= 36
	maskName		= "metal6"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "orange"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.017
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
	minEdgeJogWireMinWidth	= 0.06
	minEdgeJogWireMinLength	= 0.12
	minEdgeJogMinHeight	= 0.05
}
Layer "M7" {
	layerNumber		= 37
	maskName		= "metal7"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "blue"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0.1
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.05
	endOfLine1NeighborCornerKeepoutWidth = 0.025
	endOfLine1NeighborMinSpacing = 0.07
	endOfLine1NeighborThreshold = 0.065
	isDefaultLayer		= 1
	maxWidth		= 4.5
	unitMinThickness	= 0.09
	unitNomThickness	= 0.09
	unitMaxThickness	= 0.09
	fatTblDimension		= 7
	fatTblThreshold		= (0, 0.091, 0.131, 0.161, 0.471, 0.631, 1.501)
	fatTblParallelLength	= (0, 0.225, 0.225, 0.225, 0.475, 0.635, 1.505)
	fatTblSpacing		= (0.05, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.06, 0.06, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.08, 0.08, 0.08, 0.1, 0.13, 0.15, 0.5, 
				   0.1, 0.1, 0.1, 0.1, 0.13, 0.15, 0.5, 
				   0.13, 0.13, 0.13, 0.13, 0.13, 0.15, 0.5, 
				   0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.5, 
				   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
	fatMetalJogTblSize	= 4
	fatMetalJogThresholdTbl	= (0.255, 0.475, 0.635, 1.505)
	fatMetalJogParallelLengthTbl = (0.3, 0.5, 0.7, 1.5)
	fatMetalJogMaxSpacingThresholdTbl = (0.29, 0.32, 0.34, 0.5)
	fatMetalJogToJogMinSpacingTbl = (0.3, 0.3, 0.3, 0.3)
	fatMetalJogLengthTblSize = 2
	fatMetalJogLengthTbl	= (0, 0.22)
	fatMetalJogMinSpacingTbl = (0.06, 0.1, 
	                            0.06, 0.13, 
	                            0.06, 0.15, 
	                            0.06, 0.3)
	fatMetalJogExcludedMaxSpacingTbl = (-1, -1, -1, -1)
	fatMetalJogExcludedMinSpacingTbl = (-1, -1, -1, -1)
	minArea			= 0.017
	specialMinAreaTblSize	= 1
	specialMinAreaTbl	= (0.044)
	minAreaEdgeThresholdTbl	= (0.13)
	minEnclosedArea		= 0.2
	maxNumMinEdge		= 1
	minEdgeLength		= 0.05
	endOfLine1NeighborEndToEndMinSpacing = 0.08
	endOfLine1NeighborEndToEndThreshold = 0.065
	endOfLine1NeighborEndToEndThreshold2 = 0.065
	endOfLine1NeighborEndToEndParallelWidth = -0.02
	endOfLine2NeighborMod1Threshold = 0.065
	endOfLine2NeighborMod1MinSpacing = 0.08
	endOfLine2NeighborMod1SideKeepoutWidth = 0.115
	endOfLine2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLine2NeighborMod1SideKeepoutLength = 0.07
	endOfLine2NeighborMod1WireMinThreshold = 0.07
	convexMinEdgeLength	= 0.05
	convexConcaveMinEdgeLength = 0.065
	minEdgeLength2		= 0.155
	minEdgeLength3		= 0.07
	endOfLine3NeighborThreshold = 0.055
	endOfLine3NeighborMinSpacing = 0.115
	endOfLine3NeighborSideMinSpacing = 0.06
	endOfLine3NeighborCornerKeepoutWidth = 0
	endOfLine3NeighborSideKeepoutLength = 0.12
	endOfLine3NeighborMinLength = 0.15
	endOfLine3NeighborWireConnected = 1
	minEdgeJogWireMinWidth	= 0.06
	minEdgeJogWireMinLength	= 0.12
	minEdgeJogMinHeight	= 0.05
}
Layer "M8" {
	layerNumber		= 38
	maskName		= "metal8"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "purple"
	lineStyle		= "dot"
	pattern			= "backSlash"
	pitch			= 0.8
	defaultWidth		= 0.4
	minWidth		= 0.4
	minSpacing		= 0.4
	isDefaultLayer		= 1
	maxWidth		= 12
	unitMinThickness	= 0.85
	unitNomThickness	= 0.85
	unitMaxThickness	= 0.85
	fatTblDimension		= 3
	fatTblThreshold		= (0, 1.501, 4.501)
	fatTblParallelLength	= (0, 1.505, 4.505)
	fatTblSpacing		= (0.4, 0.5, 1.5, 
				   0.5, 0.5, 1.5, 
				   1.5, 1.5, 1.5)
	minArea			= 0.565
	minEnclosedArea		= 0.565
}
Layer "M9" {
	layerNumber		= 39
	maskName		= "metal9"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "white"
	lineStyle		= "solid"
	pattern			= "backSlash"
	pitch			= 3
	defaultWidth		= 2
	minWidth		= 2
	minSpacing		= 1
	isDefaultLayer		= 1
	maxWidth		= 12
	unitMinThickness	= 3.5
	unitNomThickness	= 3.5
	unitMaxThickness	= 3.5
	fatTblDimension		= 2
	fatTblThreshold		= (0, 4.501)
	fatTblParallelLength	= (0, 4.505)
	fatTblSpacing		= (1, 1.5, 
				   1.5, 1.5)
	minArea			= 9
	minEnclosedArea		= 9
}
Layer "AP" {
	layerNumber		= 74
	maskName		= "metal10"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "59"
	lineStyle		= "solid"
	pattern			= "slash"
	pitch			= 4.5
	defaultWidth		= 2
	minWidth		= 2
	minSpacing		= 2
	isDefaultLayer		= 1
	maxWidth		= 35
	unitMinThickness	= 1.45
	unitNomThickness	= 1.45
	unitMaxThickness	= 1.45
}
Layer "CB" {
	layerNumber		= 76
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "18"
	lineStyle		= "solid"
	pattern			= "solid"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "CB2" {
	layerNumber		= 86
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "18"
	lineStyle		= "solid"
	pattern			= "solid"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "VIA1" {
	layerNumber		= 51
	maskName		= "via1"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "43"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	maxStackLevel		= 4
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA2" {
	layerNumber		= 52
	maskName		= "via2"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	maxStackLevel		= 4
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA3" {
	layerNumber		= 53
	maskName		= "via3"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "red"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA4" {
	layerNumber		= 54
	maskName		= "via4"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "green"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA5" {
	layerNumber		= 55
	maskName		= "via5"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "magenta"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA6" {
	layerNumber		= 56
	maskName		= "via6"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "orange"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 0.05
	minWidth		= 0.05
	minSpacing		= 0.08
	isDefaultLayer		= 1
	cornerMinSpacing	= 0.07
	minSpacingCornerKeepoutWidth = 0.039
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 7
	minCutsTbl		= (1, Vrect, -1, 0.181, -1, -1, 
				   1, Vrect, 0.181, -1, -1, -1, 
				   2, Vrect, -1, 0.441, -1, -1, 
				   2, Vrect, 0.441, -1, -1, -1, 
				   1, Vrect, 0.181, -1, -1, 1.805, 
				   1, Vrect, 1.001, -1, -1, 4.155, 
				   1, Vrect, 1.501, -1, -1, 10.155)
	cutTblSize		= 2
	cutNameTbl		= (Vsq, Vrect)
	cutWidthTbl		= (0.05, 0.05)
	cutHeightTbl		= (0.05, 0.13)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.08
	enclosedCutToNeighborMinSpacing = 0.08
}
Layer "VIA7" {
	layerNumber		= 57
	maskName		= "via7"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "blue"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0.36
	minWidth		= 0.36
	minSpacing		= 0.34
	isDefaultLayer		= 1
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 3
	minCutsTbl		= (2, Vzsq, -1, 1.801, -1, -1, 
				   2, Vzsq, 1.801, -1, -1, -1, 
				   2, Vzsq, 3.001, -1, -1, 5.005)
	cutTblSize		= 1
	cutNameTbl		= (Vzsq)
	cutWidthTbl		= (0.36)
	cutHeightTbl		= (0.36)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.56
	enclosedCutToNeighborMinSpacing = 0.54
}
Layer "VIA8" {
	layerNumber		= 58
	maskName		= "via8"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "purple"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0.36
	minWidth		= 0.36
	minSpacing		= 0.34
	isDefaultLayer		= 1
	fatTblExtensionCheckCrossingCut = 1
	minCutsTblSize		= 3
	minCutsTbl		= (2, Vusq, -1, 2.001, -1, -1, 
				   2, Vusq, 2.001, -1, -1, -1, 
				   2, Vusq, 3.001, -1, -1, 5.005)
	cutTblSize		= 1
	cutNameTbl		= (Vusq)
	cutWidthTbl		= (0.36)
	cutHeightTbl		= (0.36)
	enclosedCutNumNeighbor	= 3
	enclosedCutNeighborRange = 0.56
	enclosedCutToNeighborMinSpacing = 0.54
}
Layer "RV" {
	layerNumber		= 85
	maskName		= "via9"
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "white"
	lineStyle		= "solid"
	pattern			= "rectangleX"
	pitch			= 0
	defaultWidth		= 3
	minWidth		= 3
	minSpacing		= 2
	isDefaultLayer		= 1
}
Layer "SDI" {
	layerNumber		= 122
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "58"
	lineStyle		= "dot"
	pattern			= "wave"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT_AP" {
	layerNumber		= 126
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "49"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT1" {
	layerNumber		= 131
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "yellow"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT2" {
	layerNumber		= 132
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "red"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT3" {
	layerNumber		= 133
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "green"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT4" {
	layerNumber		= 134
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "magenta"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT5" {
	layerNumber		= 135
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "orange"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT6" {
	layerNumber		= 136
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "blue"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT7" {
	layerNumber		= 137
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "purple"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT8" {
	layerNumber		= 138
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "white"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
Layer "TEXT9" {
	layerNumber		= 139
	visible			= 1
	selectable		= 1
	blink			= 0
	color			= "cyan"
	lineStyle		= "solid"
	pattern			= "blank"
	pitch			= 0
	defaultWidth		= 0
	minWidth		= 0
	minSpacing		= 0
}
ContactCode "CONT1" {
	contactCodeNumber	= 1
	contactSourceType	= 0
	cutHeight		= 0.04
	cutWidth		= 0.04
	cutLayer		= "CO"
	upperLayer		= "M1"
	lowerLayer		= "PO"
	minCutSpacing		= 0.07
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA12_1cut" {
	contactCodeNumber	= 2
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA12_1cut_V" {
	contactCodeNumber	= 3
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA12_1cut_AS" {
	contactCodeNumber	= 4
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA12_LONG_H" {
	contactCodeNumber	= 5
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA12_LONG_V" {
	contactCodeNumber	= 6
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.04
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA12_LONG_HH" {
	contactCodeNumber	= 7
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA12_1cut_H_3S" {
	contactCodeNumber	= 10
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA23_1cut" {
	contactCodeNumber	= 13
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_1cut_V" {
	contactCodeNumber	= 14
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA23_1cut_AS" {
	contactCodeNumber	= 15
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA23_LONG_H" {
	contactCodeNumber	= 16
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA23_LONG_V" {
	contactCodeNumber	= 17
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.04
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_LONG_HH" {
	contactCodeNumber	= 18
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA23_1cut_H_3S" {
	contactCodeNumber	= 21
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA34_1cut" {
	contactCodeNumber	= 24
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA34_1cut_AS" {
	contactCodeNumber	= 25
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA34_LONG_H" {
	contactCodeNumber	= 26
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA34_LONG_V" {
	contactCodeNumber	= 27
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.04
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA34_LONG_HH" {
	contactCodeNumber	= 28
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA34_1cut_H_3S" {
	contactCodeNumber	= 29
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA45_1cut" {
	contactCodeNumber	= 30
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_1cut_AS" {
	contactCodeNumber	= 31
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA45_LONG_H" {
	contactCodeNumber	= 32
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA45_LONG_V" {
	contactCodeNumber	= 33
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.04
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_LONG_HH" {
	contactCodeNumber	= 34
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA45_1cut_H_3S" {
	contactCodeNumber	= 35
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA56_1cut" {
	contactCodeNumber	= 36
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA56_1cut_AS" {
	contactCodeNumber	= 37
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA56_LONG_H" {
	contactCodeNumber	= 38
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA56_LONG_V" {
	contactCodeNumber	= 39
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.04
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA56_LONG_HH" {
	contactCodeNumber	= 40
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA56_1cut_H_3S" {
	contactCodeNumber	= 41
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA67_1cut" {
	contactCodeNumber	= 42
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_1cut_AS" {
	contactCodeNumber	= 43
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA67_LONG_H" {
	contactCodeNumber	= 44
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA67_LONG_V" {
	contactCodeNumber	= 45
	contactSourceType	= 0
	cutHeight		= 0.13
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.04
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_LONG_HH" {
	contactCodeNumber	= 46
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA67_1cut_H_3S" {
	contactCodeNumber	= 47
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA78_1cut" {
	contactCodeNumber	= 48
	contactSourceType	= 0
	cutHeight		= 0.36
	cutWidth		= 0.36
	cutLayer		= "VIA7"
	upperLayer		= "M8"
	lowerLayer		= "M7"
	minCutSpacing		= 0.34
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.08
	upperLayerEncHeight	= 0.08
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA78_1cut_H_3S" {
	contactCodeNumber	= 49
	contactSourceType	= 0
	cutHeight		= 0.36
	cutWidth		= 0.36
	cutLayer		= "VIA7"
	upperLayer		= "M8"
	lowerLayer		= "M7"
	minCutSpacing		= 0.54
	minNumCols		= 1
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.08
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.08
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA89_1cut" {
	contactCodeNumber	= 50
	contactSourceType	= 0
	cutHeight		= 0.36
	cutWidth		= 0.36
	cutLayer		= "VIA8"
	upperLayer		= "M9"
	lowerLayer		= "M8"
	minCutSpacing		= 0.34
	minNumCols		= 2
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.08
	lowerLayerEncWidth	= 0.08
	upperLayerEncHeight	= 0.82
	upperLayerEncWidth	= 0.82
	nonRotatable		= 0
}
ContactCode "VIA89_1cut_H_3S" {
	contactCodeNumber	= 51
	contactSourceType	= 0
	cutHeight		= 0.36
	cutWidth		= 0.36
	cutLayer		= "VIA8"
	upperLayer		= "M9"
	lowerLayer		= "M8"
	minCutSpacing		= 0.54
	minNumCols		= 2
	minNumRows		= 1
	maxNumRowsNonTurning	= 3
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.08
	lowerLayerEncWidth	= 0.08
	upperLayerEncHeight	= 0.82
	upperLayerEncWidth	= 0.82
	nonRotatable		= 0
	isFatContact		= 1
}
ContactCode "VIA9AP_1cut" {
	contactCodeNumber	= 52
	contactSourceType	= 0
	cutHeight		= 3
	cutWidth		= 3
	cutLayer		= "RV"
	upperLayer		= "AP"
	lowerLayer		= "M9"
	minCutSpacing		= 2
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.5
	lowerLayerEncWidth	= 0.5
	upperLayerEncHeight	= 0.5
	upperLayerEncWidth	= 0.5
	nonRotatable		= 0
}
ContactCode "VIA34_1cut_V" {
	contactCodeNumber	= 101
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA45_1cut_V" {
	contactCodeNumber	= 102
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA56_1cut_V" {
	contactCodeNumber	= 103
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA67_1cut_V" {
	contactCodeNumber	= 104
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA78_1cut_V" {
	contactCodeNumber	= 105
	contactSourceType	= 0
	cutHeight		= 0.36
	cutWidth		= 0.36
	cutLayer		= "VIA7"
	upperLayer		= "M8"
	lowerLayer		= "M7"
	minCutSpacing		= 0.34
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.08
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.08
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA12_1cut_EN1415" {
	contactCodeNumber	= 111
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA23_1cut_EN1415" {
	contactCodeNumber	= 112
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA34_1cut_EN1415" {
	contactCodeNumber	= 113
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA45_1cut_EN1415" {
	contactCodeNumber	= 114
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA56_1cut_EN1415" {
	contactCodeNumber	= 115
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA67_1cut_EN1415" {
	contactCodeNumber	= 116
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "PGVIA12_RECT" {
	contactCodeNumber	= 117
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "PGVIA23_RECT" {
	contactCodeNumber	= 118
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "PGVIA34_RECT" {
	contactCodeNumber	= 119
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "PGVIA45_RECT" {
	contactCodeNumber	= 120
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "PGVIA56_RECT" {
	contactCodeNumber	= 121
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "PGVIA67_RECT" {
	contactCodeNumber	= 122
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 1
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA12_FBD" {
	contactCodeNumber	= 141
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_FBD" {
	contactCodeNumber	= 142
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA34_FBD" {
	contactCodeNumber	= 143
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_FBD" {
	contactCodeNumber	= 144
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA56_FBD" {
	contactCodeNumber	= 145
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_FBD" {
	contactCodeNumber	= 146
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA12_FBS" {
	contactCodeNumber	= 151
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_FBS" {
	contactCodeNumber	= 152
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA34_FBS" {
	contactCodeNumber	= 153
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_FBS" {
	contactCodeNumber	= 154
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA56_FBS" {
	contactCodeNumber	= 155
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_FBS" {
	contactCodeNumber	= 156
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA12_PBD" {
	contactCodeNumber	= 161
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_PBD" {
	contactCodeNumber	= 162
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA34_PBD" {
	contactCodeNumber	= 163
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_PBD" {
	contactCodeNumber	= 164
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA56_PBD" {
	contactCodeNumber	= 165
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_PBD" {
	contactCodeNumber	= 166
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA12_PBS" {
	contactCodeNumber	= 171
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_PBS" {
	contactCodeNumber	= 172
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA34_PBS" {
	contactCodeNumber	= 173
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_PBS" {
	contactCodeNumber	= 174
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA56_PBS" {
	contactCodeNumber	= 175
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_PBS" {
	contactCodeNumber	= 176
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA12_2cut_P1" {
	contactCodeNumber	= 181
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA23_2cut_P1" {
	contactCodeNumber	= 182
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA34_2cut_P1" {
	contactCodeNumber	= 183
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA45_2cut_P1" {
	contactCodeNumber	= 184
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA56_2cut_P1" {
	contactCodeNumber	= 185
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA67_2cut_P1" {
	contactCodeNumber	= 186
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA12_2cut_P2_BLC" {
	contactCodeNumber	= 191
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA23_2cut_P2_BLC" {
	contactCodeNumber	= 192
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA34_2cut_P2_BLC" {
	contactCodeNumber	= 193
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA45_2cut_P2_BLC" {
	contactCodeNumber	= 194
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA56_2cut_P2_BLC" {
	contactCodeNumber	= 195
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA67_2cut_P2_BLC" {
	contactCodeNumber	= 196
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.155
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA12_2cut_P3" {
	contactCodeNumber	= 201
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA23_2cut_P3" {
	contactCodeNumber	= 202
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA34_2cut_P3" {
	contactCodeNumber	= 203
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA45_2cut_P3" {
	contactCodeNumber	= 204
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA56_2cut_P3" {
	contactCodeNumber	= 205
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA67_2cut_P3" {
	contactCodeNumber	= 206
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 1
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
	excludedForPGRoute	= 1
}
ContactCode "VIA12_1cut_FAT_V" {
	contactCodeNumber	= 211
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.05
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.05
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA23_1cut_FAT_V" {
	contactCodeNumber	= 212
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.05
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.05
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA34_1cut_FAT_C" {
	contactCodeNumber	= 213
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.05
	upperLayerEncHeight	= 0.05
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA45_1cut_FAT_C" {
	contactCodeNumber	= 214
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.05
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.05
	nonRotatable		= 0
}
ContactCode "VIA56_1cut_FAT_C" {
	contactCodeNumber	= 215
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.05
	upperLayerEncHeight	= 0.05
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA67_1cut_FAT_C" {
	contactCodeNumber	= 216
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.05
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.05
	nonRotatable		= 0
}
ContactCode "VIA12_FBD20" {
	contactCodeNumber	= 8
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA12_FBD30" {
	contactCodeNumber	= 9
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA12_PBDB" {
	contactCodeNumber	= 11
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA12_PBDU" {
	contactCodeNumber	= 12
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA12_PBDE" {
	contactCodeNumber	= 19
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA12_FBS25" {
	contactCodeNumber	= 20
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA12_PBSB" {
	contactCodeNumber	= 22
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA12_PBSU" {
	contactCodeNumber	= 23
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA1"
	upperLayer		= "M2"
	lowerLayer		= "M1"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA23_FBD20" {
	contactCodeNumber	= 53
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA23_FBD30" {
	contactCodeNumber	= 54
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA23_PBDB" {
	contactCodeNumber	= 55
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA23_PBDU" {
	contactCodeNumber	= 56
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA23_PBDE" {
	contactCodeNumber	= 57
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA23_FBS25" {
	contactCodeNumber	= 58
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA23_PBSB" {
	contactCodeNumber	= 59
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA23_PBSU" {
	contactCodeNumber	= 60
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA2"
	upperLayer		= "M3"
	lowerLayer		= "M2"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA34_FBD20" {
	contactCodeNumber	= 61
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA34_FBD30" {
	contactCodeNumber	= 62
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA34_PBDB" {
	contactCodeNumber	= 63
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA34_PBDU" {
	contactCodeNumber	= 64
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA34_PBDE" {
	contactCodeNumber	= 65
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA34_FBS25" {
	contactCodeNumber	= 66
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA34_PBSB" {
	contactCodeNumber	= 67
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA34_PBSU" {
	contactCodeNumber	= 68
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA3"
	upperLayer		= "M4"
	lowerLayer		= "M3"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA45_FBD20" {
	contactCodeNumber	= 69
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA45_FBD30" {
	contactCodeNumber	= 70
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA45_PBDB" {
	contactCodeNumber	= 71
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA45_PBDU" {
	contactCodeNumber	= 72
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA45_PBDE" {
	contactCodeNumber	= 73
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA45_FBS25" {
	contactCodeNumber	= 74
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA45_PBSB" {
	contactCodeNumber	= 75
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA45_PBSU" {
	contactCodeNumber	= 76
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA4"
	upperLayer		= "M5"
	lowerLayer		= "M4"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA56_FBD20" {
	contactCodeNumber	= 77
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA56_FBD30" {
	contactCodeNumber	= 78
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA56_PBDB" {
	contactCodeNumber	= 79
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA56_PBDU" {
	contactCodeNumber	= 80
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA56_PBDE" {
	contactCodeNumber	= 81
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA56_FBS25" {
	contactCodeNumber	= 82
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA56_PBSB" {
	contactCodeNumber	= 83
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.01
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0
	nonRotatable		= 0
}
ContactCode "VIA56_PBSU" {
	contactCodeNumber	= 84
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA5"
	upperLayer		= "M6"
	lowerLayer		= "M5"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.03
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA67_FBD20" {
	contactCodeNumber	= 85
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA67_FBD30" {
	contactCodeNumber	= 86
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0.03
	upperLayerEncWidth	= 0.01
	nonRotatable		= 0
}
ContactCode "VIA67_PBDB" {
	contactCodeNumber	= 87
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.02
	lowerLayerEncWidth	= 0.02
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA67_PBDU" {
	contactCodeNumber	= 88
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0.02
	upperLayerEncWidth	= 0.02
	nonRotatable		= 0
}
ContactCode "VIA67_PBDE" {
	contactCodeNumber	= 89
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.13
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0
	lowerLayerEncWidth	= 0.04
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.04
	nonRotatable		= 0
}
ContactCode "VIA67_FBS25" {
	contactCodeNumber	= 90
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.025
	upperLayerEncHeight	= 0.025
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
ContactCode "VIA67_PBSB" {
	contactCodeNumber	= 91
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.025
	lowerLayerEncWidth	= 0.01
	upperLayerEncHeight	= 0
	upperLayerEncWidth	= 0.03
	nonRotatable		= 0
}
ContactCode "VIA67_PBSU" {
	contactCodeNumber	= 92
	contactSourceType	= 0
	cutHeight		= 0.05
	cutWidth		= 0.05
	cutLayer		= "VIA6"
	upperLayer		= "M7"
	lowerLayer		= "M6"
	minCutSpacing		= 0.08
	minNumCols		= 1
	minNumRows		= 1
	excludedForSignalRoute	= 0
	isDefaultContact	= 0
	lowerLayerEncHeight	= 0.03
	lowerLayerEncWidth	= 0
	upperLayerEncHeight	= 0.01
	upperLayerEncWidth	= 0.025
	nonRotatable		= 0
}
DesignRule {
	layer1			= "via1Blockage"
	layer2			= "VIA1"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via2Blockage"
	layer2			= "VIA2"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via3Blockage"
	layer2			= "VIA3"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via4Blockage"
	layer2			= "VIA4"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via5Blockage"
	layer2			= "VIA5"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via6Blockage"
	layer2			= "VIA6"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via7Blockage"
	layer2			= "VIA7"
	minSpacing		= 0
}
DesignRule {
	layer1			= "via8Blockage"
	layer2			= "VIA8"
	minSpacing		= 0
}
DesignRule {
	layer1			= "M2"
	layer2			= "VIA1"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M3"
	layer2			= "VIA2"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M4"
	layer2			= "VIA3"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M5"
	layer2			= "VIA4"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M6"
	layer2			= "VIA5"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M7"
	layer2			= "VIA6"
	minSpacing		= 0
	endOfLineEnc2NeighborMod1TblSize = 2
	endOfLineEnc2NeighborMod1Threshold = 0.065
	endOfLineEnc2NeighborMod1CornerKeepoutWidth = 0.025
	endOfLineEnc2NeighborMod1SideKeepoutLength = 0.07
	endOfLineEnc2NeighborMod1SideKeepoutWidth = 0.115
	endOfLineEnc2NeighborMod1WireMinThreshold = 0.07
	endOfLineEnc2NeighborMod1MinEnclosure = 0.03
	endOfLineEnc2NeighborMod1Tbl = (0.05, 0.03)
	endOfLineEnc2NeighborMod1SpacingTbl = (0.08, 0.1)
	endOfLineEnc2NeighborMod1ViaArrayExcludedTbl = (0, 0)
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
	misalignedViaWireTblSize = 2
	misalignedViaWireThresholdTbl = (0, 0.055)
	misalignedViaWireMaxSpacingThresholdTbl = (0.066, 0.066)
	misalignedViaWireMinSpacingThreshold2Tbl = (0.066, 0)
	misalignedViaWireKeepoutLengthTbl = (0.12, 0.12)
	misalignedViaEndEnclosure = 0.04
	misalignedViaSideEnclosure = 0
	misalignedViaCornerKeepoutWidth = 0.041
	misalignedViaCut1TblSize = 1
	misalignedViaCut1NameTbl = (Vsq)
	misalignedViaCut2TblSize = 2
	misalignedViaCut2NameTbl = (Vsq, Vrect)
	misalignedViaMinSpacingTbl = (0.09, 0.09)
	misalignedViaCornerMinSpacingTbl = (0.08, 0.085)
	convex3CornerEncCutTblSize = 1
	convex3CornerEncCutNameTbl = (Vsq)
	convex3CornerEncMaxEdgeLengthThreshold = 0.12
	convex3CornerEncAdjacentMaxEdgeLengthThreshold = 0.06
	convex3CornerEncAdjacentMinEdgeLengthThreshold = 0.1
	convex3CornerEncMaxSpacingThreshold = 0.05
	convex3CornerEnclosure	= 0.01
}
DesignRule {
	layer1			= "M1"
	layer2			= "CO"
	minSpacing		= 0
	fatWireViaEncTblSize	= 1
	fatWireViaEncWidthThresholdTbl = (0.08)
	fatWireViaEncParallelLengthThresholdTbl = (0.18)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06)
	fatWireViaEnclosureTbl	= (0.015)
}
DesignRule {
	layer1			= "M1"
	layer2			= "VIA1"
	fatWireViaEncTblSize	= 1
	fatWireViaEncWidthThresholdTbl = (0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.13)
	fatWireViaEnclosureTbl	= (0.015)
	fatWireViaArrayExcludedTbl = (0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "M2"
	layer2			= "VIA2"
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "M3"
	layer2			= "VIA3"
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "M4"
	layer2			= "VIA4"
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "M5"
	layer2			= "VIA5"
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "M6"
	layer2			= "VIA6"
	fatWireViaEncTblSize	= 4
	fatWireViaEncWidthThresholdTbl = (0.055, 0.06, 0.075, 0.165)
	fatWireViaEncParallelLengthThresholdTbl = (0.1, 0.1, 0.1, 0.1)
	fatWireViaEncMaxSpacingThresholdTbl = (0.06, 0.065, 0.1, 0.13)
	fatWireViaEnclosureTbl	= (0.005, 0.005, 0.01, 0.015)
	fatWireViaArrayExcludedTbl = (0, 0, 0, 0)
	fatWireViaEncCheckViaOffFatWire = 1
}
DesignRule {
	layer1			= "VIA1"
	layer2			= "VIA1"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA2"
	layer2			= "VIA2"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA3"
	layer2			= "VIA3"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA4"
	layer2			= "VIA4"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA5"
	layer2			= "VIA5"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA6"
	layer2			= "VIA6"
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	sameNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
	diffNetCornerMinSpacingTbl = (0.07, 0.075, 
	                              0.075, 0.08)
}
DesignRule {
	layer1			= "VIA2"
	layer2			= "VIA3"
	cornerMinSpacing	= 0
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	minSpacingYParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetXMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingXParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetYMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingUpperEncCheckTbl = (0, 0, 
	                              0, 0)
}
DesignRule {
	layer1			= "VIA3"
	layer2			= "VIA4"
	cornerMinSpacing	= 0
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	minSpacingYParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetXMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingXParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetYMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingUpperEncCheckTbl = (0, 0, 
	                              0, 0)
}
DesignRule {
	layer1			= "VIA4"
	layer2			= "VIA5"
	cornerMinSpacing	= 0
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	minSpacingYParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetXMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingXParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetYMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingUpperEncCheckTbl = (0, 0, 
	                              0, 0)
}
DesignRule {
	layer1			= "VIA5"
	layer2			= "VIA6"
	cornerMinSpacing	= 0
	cut1TblSize		= 2
	cut2TblSize		= 2
	cut1NameTbl		= (Vsq, Vrect)
	cut2NameTbl		= (Vsq, Vrect)
	orthoSpacingExcludeCornerTbl = (1, 1, 
	                                1, 1)
	minSpacingYParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetXMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingXParallelLengthThresholdTbl = (0.025, 0.025, 
	                                         0.025, 0.025)
	diffNetYMinSpacingTbl	= (0.06, 0.06, 
				   0.06, 0.06)
	minSpacingUpperEncCheckTbl = (0, 0, 
	                              0, 0)
}
PRRule {
	rowSpacingTopTop	= 0
	rowSpacingTopBot	= 1.5
	rowSpacingBotBot	= 0
	abuttableTopTop		= 1
	abuttableTopBot		= 0
	abuttableBotBot		= 1
}
DensityRule {
	layer			= "M1"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M1"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M2"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M2"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M3"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M3"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M4"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M4"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M5"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M5"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M6"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M6"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M7"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M7"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M8"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "M8"
	windowSize		= 200
	maxGradientDensity	= 50
}
DensityRule {
	layer			= "M9"
	windowSize		= 125
	minDensity		= 10
	maxDensity		= 85
}
DensityRule {
	layer			= "AP"
	windowSize		= 100
	minDensity		= 10
	maxDensity		= 70
}
LayerDataType "fill_layer_32_7" {
	layerNumber		= 32
	dataTypeNumber		= 7
	nonMask			= 0
}
LayerDataType "fill_layer_32_1" {
	layerNumber		= 32
	dataTypeNumber		= 1
	nonMask			= 0
}
LayerDataType "fill_layer_33_7" {
	layerNumber		= 33
	dataTypeNumber		= 7
	nonMask			= 0
}
LayerDataType "fill_layer_33_1" {
	layerNumber		= 33
	dataTypeNumber		= 1
	nonMask			= 0
}
LayerDataType "fill_layer_34_7" {
	layerNumber		= 34
	dataTypeNumber		= 7
	nonMask			= 0
}
LayerDataType "fill_layer_34_1" {
	layerNumber		= 34
	dataTypeNumber		= 1
	nonMask			= 0
}
LayerDataType "fill_layer_35_7" {
	layerNumber		= 35
	dataTypeNumber		= 7
	nonMask			= 0
}
LayerDataType "fill_layer_35_1" {
	layerNumber		= 35
	dataTypeNumber		= 1
	nonMask			= 0
}
LayerDataType "fill_layer_36_7" {
	layerNumber		= 36
	dataTypeNumber		= 7
	nonMask			= 0
}
LayerDataType "fill_layer_36_1" {
	layerNumber		= 36
	dataTypeNumber		= 1
	nonMask			= 0
}
