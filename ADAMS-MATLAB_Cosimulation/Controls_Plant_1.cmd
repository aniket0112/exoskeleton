!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!--------------------------- Model Specific Colors ----------------------------!
!
!
if condition = (! db_exists(".colors.COLOR_R202G209B237"))
!
color create  &
   color_name = .colors.COLOR_R202G209B237  &
   red_component = 0.7921568627  &
   blue_component = 0.9333333333  &
   green_component = 0.8196078431
!
else 
!
color modify  &
   color_name = .colors.COLOR_R202G209B237  &
   red_component = 0.7921568627  &
   blue_component = 0.9333333333  &
   green_component = 0.8196078431
!
end 
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 20.0  &
   spacing_for_grid = 20.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = Exo_tark_controlled  &
   title = "Adams View model name: MODEL_3"
!
model create  &
   model_name = .Exo_tark_controlled.Exo_control
!
model create  &
   model_name = .Exo_tark_controlled.Exo_tark_controlled
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Exo_tark_controlled.Torque_rear  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Exo_tark_controlled.Torque_front  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Exo_tark_controlled.Theta_rear  &
   adams_id = 3  &
   function = ""
!
data_element create variable  &
   variable_name = .Exo_tark_controlled.Theta_front  &
   adams_id = 4  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .Exo_tark_controlled.PINPUT_1  &
   adams_id = 1  &
   variable_name =  &
      .Exo_tark_controlled.Torque_rear,  &
      .Exo_tark_controlled.Torque_front
!
data_element create plant input  &
   plant_input_name = .Exo_tark_controlled.Exo_control.ctrl_pinput  &
   adams_id = 2  &
   variable_name =  &
      .Exo_tark_controlled.Torque_front,  &
      .Exo_tark_controlled.Torque_rear
!
data_element create plant input  &
   plant_input_name = .Exo_tark_controlled.Exo_tark_controlled.ctrl_pinput  &
   adams_id = 3  &
   variable_name =  &
      .Exo_tark_controlled.Torque_front,  &
      .Exo_tark_controlled.Torque_rear
!
data_element create plant output  &
   plant_output_name = .Exo_tark_controlled.POUTPUT_1  &
   adams_id = 1  &
   variable_name =  &
      .Exo_tark_controlled.Theta_rear,  &
      .Exo_tark_controlled.Theta_front
!
data_element create plant output  &
   plant_output_name = .Exo_tark_controlled.Exo_control.ctrl_poutput  &
   adams_id = 2  &
   variable_name =  &
      .Exo_tark_controlled.Theta_front,  &
      .Exo_tark_controlled.Theta_rear
!
data_element create plant output  &
   plant_output_name = .Exo_tark_controlled.Exo_tark_controlled.ctrl_poutput  &
   adams_id = 3  &
   variable_name =  &
      .Exo_tark_controlled.Theta_front,  &
      .Exo_tark_controlled.Theta_rear
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.ground.MARKER_2  &
   adams_id = 2  &
   location = -309.0, -9.0, -128.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
!--------------------------------- bodyframe ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.bodyframe  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.bodyframe
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.MARKER_1  &
   adams_id = 1  &
   location = -309.0, -9.0, -128.75  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.MARKER_3  &
   adams_id = 3  &
   location = -291.0, -30.5, -100.75  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.MARKER_7  &
   adams_id = 7  &
   location = -312.5, 0.0, -15.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.PSMAR  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.cm  &
   adams_id = 28  &
   location = 0.0, -3.250659406, -98.01945377  &
   orientation = 90.0d, 90.0d, 359.5323057d
!
marker create  &
   marker_name = .Exo_tark_controlled.bodyframe.MARKER_38  &
   adams_id = 38  &
   location = -312.5, 0.0, -50.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.bodyframe  &
   mass = 0.2189003505  &
   center_of_mass_marker = .Exo_tark_controlled.bodyframe.cm  &
   ixx = 1.271947521E+04  &
   iyy = 1.246935896E+04  &
   izz = 304.2710444  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!-------------------------------- piston_10cm ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.piston_10cm  &
   adams_id = 3  &
   location = 0.0, -28.55120658, 4.497397613  &
   orientation = 0.0d, 15.78182854d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.piston_10cm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_10cm.MARKER_4  &
   adams_id = 4  &
   location = -291.0, -30.5, -100.75  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_10cm.MARKER_18  &
   adams_id = 18  &
   location = -300.5, -36.00614898, 96.17303655  &
   orientation = 0.0d, 1.601625318d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_10cm.PSMAR  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_10cm.cm  &
   adams_id = 29  &
   location = -300.5, -33.08496175, -8.30089999  &
   orientation = 0.0d, 1.601625318d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.piston_10cm  &
   mass = 0.3781808108  &
   center_of_mass_marker = .Exo_tark_controlled.piston_10cm.cm  &
   ixx = 1207.70218  &
   iyy = 1206.836224  &
   izz = 49.30338076  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Exo_tark_controlled.piston_10cm  &
   active = off  &
   visibility = off
!
!------------------------------- pistonrod_10cm -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.pistonrod_10cm  &
   adams_id = 4  &
   location = 0.0, -23.48849757, -11.67409075  &
   orientation = 0.0d, 15.78182854d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.pistonrod_10cm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_10cm.MARKER_5  &
   adams_id = 5  &
   location = -300.5, -38.50723391, 185.6223489  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_10cm.MARKER_17  &
   adams_id = 17  &
   location = -300.5, -36.00614898, 96.17303655  &
   orientation = 0.0d, 1.601625318d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_10cm.PSMAR  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_10cm.cm  &
   adams_id = 30  &
   location = -300.4999798, -36.80329197, 124.6825836  &
   orientation = 6.242513616E-04d, 1.601616097d, 359.9997613d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.pistonrod_10cm  &
   mass = 4.70533327E-02  &
   center_of_mass_marker = .Exo_tark_controlled.pistonrod_10cm.cm  &
   ixx = 143.5920494  &
   iyy = 143.5213431  &
   izz = 0.9275983666  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Exo_tark_controlled.pistonrod_10cm  &
   active = off  &
   visibility = off
!
!---------------------------------- rear_arm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.rear_arm  &
   adams_id = 5  &
   location = 0.0, -5.632967449, -1.097853485  &
   orientation = 0.0d, 22.05714577d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.rear_arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_6  &
   adams_id = 6  &
   location = -300.5, -38.50723391, 185.6223489  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_8  &
   adams_id = 8  &
   location = -312.5, 0.0, -15.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_10  &
   adams_id = 10  &
   location = -307.25, 27.21431793, 71.15601691  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_11  &
   adams_id = 11  &
   location = -309.5, -13.84829706, 334.7259538  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.PSMAR  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.cm  &
   adams_id = 31  &
   location = -299.9818112, -6.264242492, 145.0643243  &
   orientation = 0.2600272567d, 3.972936746d, 359.6760148d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_37  &
   adams_id = 37  &
   location = -312.5, -8.0, 235.0  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_39  &
   adams_id = 39  &
   location = -312.5, 0.0, -15.0  &
   orientation = 270.0d, 90.0d, 202.0571458d
!
marker create  &
   marker_name = .Exo_tark_controlled.rear_arm.MARKER_40  &
   adams_id = 40  &
   location = -312.5, 0.0, -15.0  &
   orientation = 270.0d, 90.0d, 202.0571458d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.rear_arm  &
   mass = 0.1287259688  &
   center_of_mass_marker = .Exo_tark_controlled.rear_arm.cm  &
   ixx = 1445.592501  &
   iyy = 1434.012611  &
   izz = 32.81847165  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!-------------------------------- piston_25cm ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.piston_25cm  &
   adams_id = 6  &
   location = 0.0, -34.3460915, 3.914045574  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.piston_25cm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_25cm.MARKER_9  &
   adams_id = 9  &
   location = -307.25, 27.21431793, 71.15601691  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_25cm.MARKER_15  &
   adams_id = 15  &
   location = -300.0, 88.32430519, 422.5858849  &
   orientation = 180.0d, 9.864501276d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_25cm.PSMAR  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.piston_25cm.cm  &
   adams_id = 32  &
   location = -300.0, 56.5919422, 240.100163  &
   orientation = 180.0d, 9.864501276d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.piston_25cm  &
   mass = 0.5711383029  &
   center_of_mass_marker = .Exo_tark_controlled.piston_25cm.cm  &
   ixx = 6148.4115  &
   iyy = 6147.545544  &
   izz = 64.41182526  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Exo_tark_controlled.piston_25cm  &
   active = off  &
   visibility = off
!
!------------------------------- pistonrod_25cm -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.pistonrod_25cm  &
   adams_id = 7  &
   location = 0.0, -51.47796385, -94.60752034  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.pistonrod_25cm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_25cm.MARKER_14  &
   adams_id = 14  &
   location = -290.8348486, 114.677792, 574.1388929  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_25cm.MARKER_16  &
   adams_id = 16  &
   location = -300.0, 88.32430519, 422.5858849  &
   orientation = 180.0d, 9.864501276d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_25cm.PSMAR  &
   adams_id = 24  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.pistonrod_25cm.cm  &
   adams_id = 33  &
   location = -300.0000249, 90.45245714, 434.8244469  &
   orientation = 180.0000841d, 9.864497914d, 180.0005746d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.pistonrod_25cm  &
   mass = 7.93329776E-02  &
   center_of_mass_marker = .Exo_tark_controlled.pistonrod_25cm.cm  &
   ixx = 811.1713624  &
   iyy = 811.1006503  &
   izz = 1.331094337  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Exo_tark_controlled.pistonrod_25cm  &
   active = off  &
   visibility = off
!
!---------------------------------- fore_arm ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
part create rigid_body name_and_position  &
   part_name = .Exo_tark_controlled.fore_arm  &
   adams_id = 8  &
   location = 0.0, -254.0316748, -12.55666615  &
   orientation = 180.0d, 21.51288389d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.fore_arm
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.MARKER_12  &
   adams_id = 12  &
   location = -309.5, -13.84829706, 334.7259538  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.MARKER_13  &
   adams_id = 13  &
   location = -290.8348486, 114.677792, 574.1388929  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.PSMAR  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.cm  &
   adams_id = 34  &
   location = -300.0, 52.73771092, 492.568974  &
   orientation = 180.0d, 23.31236374d, 180.0d
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.MARKER_41  &
   adams_id = 41  &
   location = -309.5, -13.84829706, 334.7259538  &
   orientation = 90.0d, 90.0d, 21.51288389d
!
marker create  &
   marker_name = .Exo_tark_controlled.fore_arm.MARKER_42  &
   adams_id = 42  &
   location = -309.5, -13.84829706, 334.7259538  &
   orientation = 90.0d, 90.0d, 21.51288389d
!
part create rigid_body mass_properties  &
   part_name = .Exo_tark_controlled.fore_arm  &
   mass = 0.1024455565  &
   center_of_mass_marker = .Exo_tark_controlled.fore_arm.cm  &
   ixx = 1221.762771  &
   iyy = 1218.032427  &
   izz = 19.66306865  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Controls_Plant_1.xmt_txt"  &
   model_name = .Exo_tark_controlled
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.bodyframe.SOLID1  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.pistonrod_10cm.SOLID3  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   color = COLOR_R202G209B237
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.fore_arm.SOLID7  &
   color = COLOR_R202G209B237
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_1  &
   adams_id = 1  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_10cm.SOLID3  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_1  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_2  &
   adams_id = 2  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_2  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_3  &
   adams_id = 3  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.fore_arm.SOLID7  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_3  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_4  &
   adams_id = 4  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.fore_arm.SOLID7  &
   j_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_4  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_5  &
   adams_id = 5  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_10cm.SOLID3  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_5  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_6  &
   adams_id = 6  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   j_geometry_name = .Exo_tark_controlled.bodyframe.SOLID1  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_6  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_7  &
   adams_id = 7  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   j_geometry_name = .Exo_tark_controlled.bodyframe.SOLID1  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_7  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_8  &
   adams_id = 8  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   j_geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_8  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_9  &
   adams_id = 9  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_9  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_10  &
   adams_id = 10  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.fore_arm.SOLID7  &
   j_geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_10  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_11  &
   adams_id = 11  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.rear_arm.SOLID4  &
   j_geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_11  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_12  &
   adams_id = 12  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.pistonrod_10cm.SOLID3  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_12  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_13  &
   adams_id = 13  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.pistonrod_10cm.SOLID3  &
   j_geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_13  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_14  &
   adams_id = 14  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   j_geometry_name = .Exo_tark_controlled.piston_25cm.SOLID5  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_14  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_15  &
   adams_id = 15  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.piston_10cm.SOLID2  &
   j_geometry_name = .Exo_tark_controlled.pistonrod_25cm.SOLID6  &
   penalty = 1000.0  &
   restitution_coefficient = 1.0  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_15  &
   active = off  &
   visibility = off
!
contact create  &
   contact_name = .Exo_tark_controlled.CONTACT_16  &
   adams_id = 16  &
   type = solid_to_solid  &
   i_geometry_name = .Exo_tark_controlled.bodyframe.SOLID1  &
   j_geometry_name = .Exo_tark_controlled.fore_arm.SOLID7  &
   stiffness = 1.0E+05  &
   damping = 10.0  &
   exponent = 2.2  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 0.3  &
   mu_dynamic = 0.1  &
   stiction_transition_velocity = 100.0  &
   friction_transition_velocity = 1000.0
!
force attributes  &
   force_name = .Exo_tark_controlled.CONTACT_16  &
   visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .Exo_tark_controlled.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .Exo_tark_controlled.bodyframe.MARKER_1  &
   j_marker_name = .Exo_tark_controlled.ground.MARKER_2
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .Exo_tark_controlled.bodyframe.MARKER_3  &
   j_marker_name = .Exo_tark_controlled.piston_10cm.MARKER_4
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_2  &
   active = off  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .Exo_tark_controlled.pistonrod_10cm.MARKER_5  &
   j_marker_name = .Exo_tark_controlled.rear_arm.MARKER_6
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_3  &
   active = off  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .Exo_tark_controlled.bodyframe.MARKER_7  &
   j_marker_name = .Exo_tark_controlled.rear_arm.MARKER_8
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .Exo_tark_controlled.piston_25cm.MARKER_9  &
   j_marker_name = .Exo_tark_controlled.rear_arm.MARKER_10
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_5  &
   active = off  &
   visibility = off
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .Exo_tark_controlled.rear_arm.MARKER_11  &
   j_marker_name = .Exo_tark_controlled.fore_arm.MARKER_12
!
constraint create joint revolute  &
   joint_name = .Exo_tark_controlled.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .Exo_tark_controlled.fore_arm.MARKER_13  &
   j_marker_name = .Exo_tark_controlled.pistonrod_25cm.MARKER_14
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_7  &
   active = off  &
   visibility = off
!
constraint create joint translational  &
   joint_name = .Exo_tark_controlled.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .Exo_tark_controlled.piston_25cm.MARKER_15  &
   j_marker_name = .Exo_tark_controlled.pistonrod_25cm.MARKER_16
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_8  &
   active = off  &
   visibility = off
!
constraint create joint translational  &
   joint_name = .Exo_tark_controlled.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .Exo_tark_controlled.pistonrod_10cm.MARKER_17  &
   j_marker_name = .Exo_tark_controlled.piston_10cm.MARKER_18
!
constraint attributes  &
   constraint_name = .Exo_tark_controlled.JOINT_9  &
   active = off  &
   visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .Exo_tark_controlled.Rear_Tark  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .Exo_tark_controlled.rear_arm.MARKER_39  &
   j_marker_name = .Exo_tark_controlled.rear_arm.MARKER_40  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Exo_tark_controlled.Front_Tark  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .Exo_tark_controlled.fore_arm.MARKER_41  &
   j_marker_name = .Exo_tark_controlled.fore_arm.MARKER_42  &
   action_only = on  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Exo_tark_controlled.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=50 model_name=.Exo_tark_controlled"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Exo_tark_controlled.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.input_channels  &
   object_value =   &
      .Exo_tark_controlled.Torque_rear,  &
      .Exo_tark_controlled.Torque_front
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.output_channels  &
   object_value =   &
      .Exo_tark_controlled.Theta_rear,  &
      .Exo_tark_controlled.Theta_front
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.file_name  &
   string_value = "Controls_Plant_1"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.host  &
   string_value = "AUM"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .Exo_tark_controlled.Controls_Plant_1.include_mnf  &
   string_value = "no"
!
ude modify instance  &
   instance_name = .Exo_tark_controlled.Controls_Plant_1
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Exo_tark_controlled.ground
!
geometry create shape force  &
   force_name = .Exo_tark_controlled.SFORCE_1_force_graphic_1  &
   adams_id = 61  &
   force_element_name = .Exo_tark_controlled.Rear_Tark  &
   applied_at_marker_name = .Exo_tark_controlled.rear_arm.MARKER_39
!
geometry create shape force  &
   force_name = .Exo_tark_controlled.SFORCE_2_force_graphic_1  &
   adams_id = 62  &
   force_element_name = .Exo_tark_controlled.Front_Tark  &
   applied_at_marker_name = .Exo_tark_controlled.fore_arm.MARKER_41
!
geometry create shape gcontact  &
   contact_force_name = .Exo_tark_controlled.GCONTACT_71  &
   adams_id = 71  &
   contact_element_name = .Exo_tark_controlled.CONTACT_16  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Exo_tark_controlled.GCONTACT_71  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = .Exo_tark_controlled.ACC  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9806.65  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .Exo_tark_controlled.MEAS_ANGLE_REAR  &
   from_first = no  &
   object = .Exo_tark_controlled.JOINT_4  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component
!
data_element attributes  &
   data_element_name = .Exo_tark_controlled.MEAS_ANGLE_REAR  &
   color = WHITE
!
measure create object  &
   measure_name = .Exo_tark_controlled.MEAS_ANGLE_FRONT  &
   from_first = no  &
   object = .Exo_tark_controlled.JOINT_6  &
   characteristic = ax_ay_az_projection_angles  &
   component = z_component
!
data_element attributes  &
   data_element_name = .Exo_tark_controlled.MEAS_ANGLE_FRONT  &
   color = WHITE
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Exo_tark_controlled.layout_config  &
   integer_value = 1
!
variable create  &
   variable_name = .Exo_tark_controlled._model  &
   string_value = ".Exo_tark_controlled"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Exo_tark_controlled.Torque_rear  &
   function = "700"
!
data_element modify variable  &
   variable_name = .Exo_tark_controlled.Torque_front  &
   function = "100"
!
data_element modify variable  &
   variable_name = .Exo_tark_controlled.Theta_rear  &
   function = ".Exo_tark_controlled.MEAS_ANGLE_REAR"
!
data_element modify variable  &
   variable_name = .Exo_tark_controlled.Theta_front  &
   function = "25+.Exo_tark_controlled.MEAS_ANGLE_FRONT"
!
force modify direct single_component_force  &
   single_component_force_name = .Exo_tark_controlled.Rear_Tark  &
   function = "VARVAL(.Exo_tark_controlled.Torque_rear)"
!
force modify direct single_component_force  &
   single_component_force_name = .Exo_tark_controlled.Front_Tark  &
   function = "VARVAL(.Exo_tark_controlled.Torque_front)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Exo_tark_controlled.Controls_Plant_1
!
model display  &
   model_name = Exo_tark_controlled
