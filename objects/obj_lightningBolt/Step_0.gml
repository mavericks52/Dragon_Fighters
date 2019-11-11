/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 006C828B
/// @DnDArgument : "code" "$(13_10)if(dir < 1){$(13_10)	speed = -40;$(13_10)}$(13_10)else{$(13_10)	speed = 40;$(13_10)}$(13_10)$(13_10)$(13_10)//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally$(13_10)$(13_10)$(13_10)	if place_meeting(x, y, obj_batman) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){$(13_10)		if(place_meeting(x,y,obj_batman)){$(13_10)		with(obj_batman){$(13_10)			knockback_force_applied = other.knockback_force;$(13_10)			knockback_force_applied_x = other.knockback_force;$(13_10)			knockback_dir = point_direction(x,y ,other.x + 45, other.y - 45);$(13_10)		}$(13_10)		}$(13_10)	instance_destroy();$(13_10)	}"

if(dir < 1){
	speed = -40;
}
else{
	speed = 40;
}


//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally


	if place_meeting(x, y, obj_batman) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){
		if(place_meeting(x,y,obj_batman)){
		with(obj_batman){
			knockback_force_applied = other.knockback_force;
			knockback_force_applied_x = other.knockback_force;
			knockback_dir = point_direction(x,y ,other.x + 45, other.y - 45);
		}
		}
	instance_destroy();
	}