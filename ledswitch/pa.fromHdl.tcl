
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ledswitch -dir "C:/Users/sujit/Projects/minor/ledswitch/planAhead_run_1" -part xc3s100evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ledswitch_constrains.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ledcontroller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ledcontroller $srcset
add_files [list {ledswitch_constrains.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100evq100-4
