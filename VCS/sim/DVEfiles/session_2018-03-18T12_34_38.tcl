# Begin_DVE_Session_Save_Info
# DVE reload session
# Saved on Sun Mar 18 12:34:38 2018
# Designs open: 3
#   V1: /nfs/home/rrmina/Desktop/VCS/sim/tb_randomGenerator.vpd
#   V2: /nfs/home/rrmina/Desktop/VCS/sim/tb_rngAddress.vpd
#   V3: /nfs/home/rrmina/Desktop/VCS/sim/tb_winnerPolicy.vpd
# Toplevel windows open: 2
# 	TopLevel.1
# 	TopLevel.2
#   Source.1: 
#   Wave.1: 27 signals
#   Group count = 3
#   Group Group1 signal count = 6
#   Group Group2 signal count = 7
#   Group Group3 signal count = 27
# End_DVE_Session_Save_Info

# DVE version: H-2013.06-SP1_Full64
# DVE build date: Nov 27 2013 21:25:23


#<Session mode="Reload" path="/nfs/home/rrmina/Desktop/VCS/sim/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Reload
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all
gui_clear_window -type Wave
gui_clear_window -type List

# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

set TopLevel.1 TopLevel.1

# Docked window settings
set HSPane.1 HSPane.1
set Hier.1 Hier.1
set DLPane.1 DLPane.1
set Data.1 Data.1
set Console.1 Console.1
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 Source.1
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings


# Create and position top-level window: TopLevel.2

set TopLevel.2 TopLevel.2

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 Wave.1
gui_update_layout -id ${Wave.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 457} {child_wave_right 1116} {child_wave_colname 226} {child_wave_colvalue 227} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/nfs/home/rrmina/Desktop/VCS/sim/tb_randomGenerator.vpd}] } {
	gui_open_db -design V1 -file /nfs/home/rrmina/Desktop/VCS/sim/tb_randomGenerator.vpd -nosource
}
if { ![gui_is_db_opened -db {/nfs/home/rrmina/Desktop/VCS/sim/tb_rngAddress.vpd}] } {
	gui_open_db -design V2 -file /nfs/home/rrmina/Desktop/VCS/sim/tb_rngAddress.vpd -nosource
}
if { ![gui_is_db_opened -db {/nfs/home/rrmina/Desktop/VCS/sim/tb_winnerPolicy.vpd}] } {
	gui_open_db -design V3 -file /nfs/home/rrmina/Desktop/VCS/sim/tb_winnerPolicy.vpd -nosource
}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {V3:tb_winnerPolicy.wp1}
gui_load_child_values {V3:tb_winnerPolicy}
gui_load_child_values {V2:tb_rngAddress}
gui_load_child_values {V1:tb_randomGenerator}


set _session_group_39 Group1
gui_sg_create "$_session_group_39"
set Group1 "$_session_group_39"

gui_sg_addsignal -group "$_session_group_39" { V1:tb_randomGenerator.clock V1:tb_randomGenerator.nrst V1:tb_randomGenerator.en_rng V1:tb_randomGenerator.rng_out V1:tb_randomGenerator.rng_out_4bit V1:tb_randomGenerator.done }

set _session_group_40 Group2
gui_sg_create "$_session_group_40"
set Group2 "$_session_group_40"

gui_sg_addsignal -group "$_session_group_40" { V2:tb_rngAddress.clock V2:tb_rngAddress.nreset V2:tb_rngAddress.start_rng_address V2:tb_rngAddress.betterNeighborCount V2:tb_rngAddress.rng_out_4bit V2:tb_rngAddress.rng_address_out V2:tb_rngAddress.done_rng_address }
gui_set_radix -radix {decimal} -signals {V2:tb_rngAddress.rng_address_out}
gui_set_radix -radix {unsigned} -signals {V2:tb_rngAddress.rng_address_out}

set _session_group_41 Group3
gui_sg_create "$_session_group_41"
set Group3 "$_session_group_41"

gui_sg_addsignal -group "$_session_group_41" { V3:tb_winnerPolicy.clock V3:tb_winnerPolicy.nrst V3:tb_winnerPolicy.wr_en V3:tb_winnerPolicy.mem_data_in V3:tb_winnerPolicy.mem_data_out V3:tb_winnerPolicy.address V3:tb_winnerPolicy.en_rng V3:tb_winnerPolicy.done_rng V3:tb_winnerPolicy.rng_out V3:tb_winnerPolicy.rng_out_4bit V3:tb_winnerPolicy.rng_address V3:tb_winnerPolicy.betterNeighborCount V3:tb_winnerPolicy.which V3:tb_winnerPolicy.start_rngAddress V3:tb_winnerPolicy.done_rngAddress V3:tb_winnerPolicy.en V3:tb_winnerPolicy.start_winnerPolicy V3:tb_winnerPolicy.mybest V3:tb_winnerPolicy.besthop V3:tb_winnerPolicy.bestvalue V3:tb_winnerPolicy.bestneighborID V3:tb_winnerPolicy.MY_NODE_ID V3:tb_winnerPolicy.epsilon V3:tb_winnerPolicy.epsilon_step V3:tb_winnerPolicy.nexthop V3:tb_winnerPolicy.done_winnerPolicy V3:tb_winnerPolicy.wp1.state }
gui_set_radix -radix {decimal} -signals {V3:tb_winnerPolicy.nexthop}
gui_set_radix -radix {unsigned} -signals {V3:tb_winnerPolicy.nexthop}
gui_set_radix -radix {decimal} -signals {V3:tb_winnerPolicy.wp1.state}
gui_set_radix -radix {unsigned} -signals {V3:tb_winnerPolicy.wp1.state}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {Function 1} {Block 1} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*} -force
gui_change_design -id ${Hier.1} -design V3
catch {gui_list_expand -id ${Hier.1} V3:tb_winnerPolicy}
catch {gui_list_select -id ${Hier.1} {V3:tb_winnerPolicy.wp1}}
gui_view_scroll -id ${Hier.1} -vertical -set 5335
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {V3:tb_winnerPolicy.wp1}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {V3:tb_winnerPolicy.wp1.state }}
gui_view_scroll -id ${Data.1} -vertical -set 222
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 5335
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1} ../lib/saed90nm.v -startline 1 -replace
gui_view_scroll -id ${Source.1} -vertical -set 210
gui_src_set_reusable -id ${Source.1}

# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.1} 0 750000
gui_list_add_group -id ${Wave.1} -after {New Group} {Group3}
gui_seek_criteria -id ${Wave.1} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.1}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group Group3  -position in

gui_marker_move -id ${Wave.1} {C1} 0
gui_view_scroll -id ${Wave.1} -vertical -set 4
gui_show_grid -id ${Wave.1} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

