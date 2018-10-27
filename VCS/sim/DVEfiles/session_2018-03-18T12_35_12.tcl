# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Sun Mar 18 12:35:12 2018
# Designs open: 3
#   V1: /nfs/home/rrmina/Desktop/VCS/sim/tb_randomGenerator.vpd
#   V2: /nfs/home/rrmina/Desktop/VCS/sim/tb_rngAddress.vpd
#   V3: /nfs/home/rrmina/Desktop/VCS/sim/tb_winnerPolicy.vpd
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: 
#   Group count = 3
#   Group Group1 signal count = 6
#   Group Group2 signal count = 7
#   Group Group3 signal count = 27
# End_DVE_Session_Save_Info

# DVE version: H-2013.06-SP1_Full64
# DVE build date: Nov 27 2013 21:25:23


#<Session mode="Full" path="/nfs/home/rrmina/Desktop/VCS/sim/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state normal -rect {{4 93} {1637 1020}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 123]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 123
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 122} {height 675} {dock_state left} {dock_on_new_line true} {child_hier_colhier 140} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 489]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 489
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 675
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 488} {height 675} {dock_state left} {dock_on_new_line true} {child_data_colvariable 208} {child_data_colvalue 168} {child_data_coltype 108} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 178]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1620
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 178
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1633} {height 177} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

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


set _session_group_42 Group1
gui_sg_create "$_session_group_42"
set Group1 "$_session_group_42"

gui_sg_addsignal -group "$_session_group_42" { V1:tb_randomGenerator.clock V1:tb_randomGenerator.nrst V1:tb_randomGenerator.en_rng V1:tb_randomGenerator.rng_out V1:tb_randomGenerator.rng_out_4bit V1:tb_randomGenerator.done }

set _session_group_43 Group2
gui_sg_create "$_session_group_43"
set Group2 "$_session_group_43"

gui_sg_addsignal -group "$_session_group_43" { V2:tb_rngAddress.clock V2:tb_rngAddress.nreset V2:tb_rngAddress.start_rng_address V2:tb_rngAddress.betterNeighborCount V2:tb_rngAddress.rng_out_4bit V2:tb_rngAddress.rng_address_out V2:tb_rngAddress.done_rng_address }
gui_set_radix -radix {decimal} -signals {V2:tb_rngAddress.rng_address_out}
gui_set_radix -radix {unsigned} -signals {V2:tb_rngAddress.rng_address_out}

set _session_group_44 Group3
gui_sg_create "$_session_group_44"
set Group3 "$_session_group_44"

gui_sg_addsignal -group "$_session_group_44" { V3:tb_winnerPolicy.clock V3:tb_winnerPolicy.nrst V3:tb_winnerPolicy.wr_en V3:tb_winnerPolicy.mem_data_in V3:tb_winnerPolicy.mem_data_out V3:tb_winnerPolicy.address V3:tb_winnerPolicy.en_rng V3:tb_winnerPolicy.done_rng V3:tb_winnerPolicy.rng_out V3:tb_winnerPolicy.rng_out_4bit V3:tb_winnerPolicy.rng_address V3:tb_winnerPolicy.betterNeighborCount V3:tb_winnerPolicy.which V3:tb_winnerPolicy.start_rngAddress V3:tb_winnerPolicy.done_rngAddress V3:tb_winnerPolicy.en V3:tb_winnerPolicy.start_winnerPolicy V3:tb_winnerPolicy.mybest V3:tb_winnerPolicy.besthop V3:tb_winnerPolicy.bestvalue V3:tb_winnerPolicy.bestneighborID V3:tb_winnerPolicy.MY_NODE_ID V3:tb_winnerPolicy.epsilon V3:tb_winnerPolicy.epsilon_step V3:tb_winnerPolicy.nexthop V3:tb_winnerPolicy.done_winnerPolicy V3:tb_winnerPolicy.wp1.state }
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
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
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
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
#</Session>

