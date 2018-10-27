set_app_var search_path "$search_path mapped lib cons rtl"
set_app_var target_library CORE65GPSVT_nom_1.00V_25C.db
set_app_var link_library "* $target_library"

read_verilog "top.v"
current_design top
link
check_design > check_design.log
source timing.con
compile
report_constraint -all_violators > constraint_report.log
report_area > area_report.log
report_timing > timing_report.log
report_power -analysis_effort high > top_power2.log
write_sdf -version 1.0 mapped/top.sdf
write -f verilog -hier -out mapped/top_mapped.v

gui_start
