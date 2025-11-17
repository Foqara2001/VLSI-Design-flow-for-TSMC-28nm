//  Runset file generated on Wed Aug 27 16:49:22 2025
//  by Calibre Interactive v2025.1_33.17    Wed Mar 5 19:23:48 PST 2025
//
//      *** PLEASE DO NOT MODIFY THIS FILE ***
//
//

cmn.showOptionPages.value = [ "Database", "Options" ]
drc.rulesFile.value = "/data/tsmc/28HPCPMMWAVE/Calibre/drc/2.2a/CLN28HP_9M_5X1Y1Z1U_002.22a.encrypt"
drc.layout.layoutFile.value = "/project/tsmc28mmwave/users/foqara/ws/riscv/extracted_data/top.gds"
cmn.layout.defFiles.value = [ "%l.def" ]
drc.layout.topCellLibrary.value = "%L"
cmn.layout.topCellLibraryFDI.value = "%L"
drc.layout.topCell.value = "riscv_core"
drc.layout.topCellView.value = "layout"
cmn.layout.topCellViewFDI.value = "layout"
drc.drcdb.resultsFormat.value = "GDSII"
drc.drcdb.resultsFile.value = "/project/tsmc28mmwave/users/foqara/ws/riscv/runset_signoff_tec/%l.drc.results"
drc.drcdb.resultsCellSuffix.value = "rs"
drc.drcdb.resultsCellSuffix.specified = true
drc.reports.drcSummaryReport.value = "%l.drc.summary"
drc.drcMaximumResults.upperLimit.value = "MAXIMUMALL"
drc.dfmDefaults.resultsFile.value = "%l.dfmDefaults.db"

cmn.turboCommand.runHow.value = "all"
cmn.lsfSlaveHosts.parameters = [
    [ true, "1", "1", "", "", "", "", "", ""]
]
cmn.licenseTimeout.specified = true
cmn.licenseTimeout.timeout.value = 2
cmn.transcriptPrefs.specified = true
cmn.transcriptPrefs.transcriptEchoFile.value = "%l.log"
cmn.customPrefs.customFile.value = "$kit_dir/../../../Calibre/runsets/drccustom"
cmn.customPrefs.customFile.specified = true
cmn.miscPrefs.overwriteLayoutPref.value = false
CHECK_LOW_DENSITY.value = "0"
CHECK_LOW_DENSITY.specified = false
drc.setNameTemplate("nt_runDir", "./calibredrc/%l")
