/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 122CE6DF
/// @DnDArgument : "code" "$(13_10)if(dir < 1){$(13_10)	speed = -40;$(13_10)}$(13_10)else{$(13_10)	speed = 40;$(13_10)}$(13_10)$(13_10)if(Is_Jump != 1){$(13_10)	if (dir == -1){$(13_10)	image_angle += 4;$(13_10)	}$(13_10)	else{image_angle -= 4}$(13_10)}$(13_10)//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally$(13_10)if (Is_Jump == 1) {//if its set to rotate the object$(13_10)	$(13_10)     image_angle += 15;$(13_10)}$(13_10)$(13_10)	if place_meeting(x, y, obj_flash) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){$(13_10)		if place_meeting(x , y, obj_flash){$(13_10)			with(obj_flash){$(13_10)				knockback_force_applied = other.knockback_force;$(13_10)				knockback_force_applied_x = other.knockback_force;$(13_10)				knockback_dir = point_direction(x,y, other.x+20, other.y-45);$(13_10)			}$(13_10)			var i;$(13_10)			for(i = 0; i < damage && obj_flash.flash_hp > 0; i+=1) {$(13_10)				with(obj_flash){$(13_10)					flash_hp -= 1;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	instance_destroy();$(13_10)	}"

if(dir < 1){
	speed = -40;
}
else{
	speed = 40;
}

if(Is_Jump != 1){
	if (dir == -1){
	image_angle += 4;
	}
	else{image_angle -= 4}
}
//image_angle = irandom(7) * 45; // randomised rotation to go up/down/left/right/45 degrees diagonally
if (Is_Jump == 1) {//if its set to rotate the object
	
     image_angle += 15;
}

	if place_meeting(x, y, obj_flash) or (place_meeting(x, y, obj_floor)) or (place_meeting(x, y, obj_boundries_N)){
		if place_meeting(x , y, obj_flash){
			with(obj_flash){
				knockback_force_applied = other.knockback_force;
				knockback_force_applied_x = other.knockback_force;
				knockback_dir = point_direction(x,y, other.x+20, other.y-45);
			}
			var i;
			for(i = 0; i < damage && obj_flash.flash_hp > 0; i+=1) {
				with(obj_flash){
					flash_hp -= 1;
				}
			}
		}
	instance_destroy();
	}