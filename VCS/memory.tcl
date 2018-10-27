set_app_var search_path "$search_path mapped lib cons rtl"
set_app_var target_library CORE65LPLVT_nom_1.00V_25C.db
set_app_var link_library "* $target_library"

read_verilog "memory2.v"
current_design mem
link
check_design > check_design.log
source timing.con
compile
report_constraint -all_violators > constraint_report.log
report_area > area_report.log
report_timing > timing_report.log
write_sdf -version 1.0 mapped/memory_mapped.sdf
write -f verilog -hier -out mapped/memory_mapped.v
report_power > memory2.power
gui_start
