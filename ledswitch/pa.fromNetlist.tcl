
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ledswitch -dir "C:/Users/sujit/Projects/minor/ledswitch/planAhead_run_3" -part xc3s100evq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/sujit/Projects/minor/ledswitch/ledcontroller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/sujit/Projects/minor/ledswitch} }
set_property target_constrs_file "ledswitch_constrains.ucf" [current_fileset -constrset]
add_files [list {ledswitch_constrains.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
