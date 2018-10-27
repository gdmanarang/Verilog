# step 1: simulate your design as usual using dve
# step 2: invoke primetime
# in command prompt: > pt_shell -64bit
# in pt_shell prompt, run the succeeding commands or source tcl 

#common commands
set power_enable_analysis true
set power_analysis_mode time_based
set search_path "."
set link_library "* /nfs/cad/cmos065_536/CORE65LPSVT_5.1/libs/CORE65LPSVT_nom_1.00V_25C.db"
# read the syntehsized netlist
read_verilog ./filter_syn.v
current_design TOP
# define simulation environment
link
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock -period 10 -waveform [list 0 5] -name CLK [get_ports CLK]
read_vcd "filter.dump" -strip_path "tb_filter/TOP"
check_power
set_power_analysis_options -waveform_format fsdb -waveform_output vcd
update_power
report_power > filter_pt_power.rpt
