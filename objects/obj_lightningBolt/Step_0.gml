/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 006C828B
/// @DnDArgument : "code" "$(13_10)if(dir < 1){$(13_10)	speed = -40;$(13_10)}$(13_10)else{$(13_10)	speed = 40;$(13_10)}$(13_10)$(13_10)$(13_10)//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally$(13_10)$(13_10)$(13_10)	if place_meeting(x, y, obj_batman) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){$(13_10)	instance_destroy();$(13_10)	}"

if(dir < 1){
	speed = -40;
}
else{
	speed = 40;
}


//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally


	if place_meeting(x, y, obj_batman) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){
	instance_destroy();
	}