/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C917F66
/// @DnDArgument : "code" "image_xscale = 0.2;$(13_10)image_yscale = 0.2;$(13_10)Is_Rotating = 0;$(13_10)Point_dir = 0;$(13_10)$(13_10)if(obj_batman.vsp != 0){$(13_10)	Point_dir = image_angle + 90; //the angle to rotate to, add 90 degrees to current angle$(13_10)	Is_Rotating = 1; //set to true$(13_10)}$(13_10)$(13_10)$(13_10)rspeed = 5; //the speed of rotation, how fast it rotates$(13_10)$(13_10)"
image_xscale = 0.2;
image_yscale = 0.2;
Is_Rotating = 0;
Point_dir = 0;

if(obj_batman.vsp != 0){
	Point_dir = image_angle + 90; //the angle to rotate to, add 90 degrees to current angle
	Is_Rotating = 1; //set to true
}


rspeed = 5; //the speed of rotation, how fast it rotates