set_app_var search_path "$search_path mapped lib cons rtl"
set_app_var target_library CORE65GPSVT_nom_1.00V_25C.db
set_app_var link_library "* $target_library"
set_app_var power_enable_analysis true


read_verilog "top_mapped.v"
current_design top
link
source timing.con
read_saif "tb_top.saif"
update_power
report_power

