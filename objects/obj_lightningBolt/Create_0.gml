/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DF6F641
/// @DnDArgument : "code" "knockback_force = 75;$(13_10)Is_Jump = 0;$(13_10)Point_dir = 0;$(13_10)dir = sign(obj_flash.image_xscale);$(13_10)jump = obj_flash.vsp;$(13_10)damage = 5;$(13_10)$(13_10)$(13_10)if(dir == -1){$(13_10)	image_xscale = -0.8;$(13_10)}$(13_10)else{$(13_10)	image_xscale = 0.8;$(13_10)}$(13_10)$(13_10)if(jump != 0){$(13_10)isJumping = true;$(13_10)point_direction(x,y,irandom_range(1,8000), irandom_range(1,8000));$(13_10)}$(13_10)$(13_10)$(13_10)if(obj_flash.vsp != 0){$(13_10)	//the angle to rotate to, add 90 degrees to current angle$(13_10)	Is_Jump = 1; //set to true$(13_10)}$(13_10)$(13_10)if(obj_flash.vsp == 0){$(13_10)	image_angle = 0; $(13_10)	Is_Jump = 0;$(13_10)	sprite_set_offset(spr_batarang, 30, 20);$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)rspeed = 5; //the speed of rotation, how fast it rotates$(13_10)$(13_10)"
knockback_force = 75;
Is_Jump = 0;
Point_dir = 0;
dir = sign(obj_flash.image_xscale);
jump = obj_flash.vsp;
damage = 5;


if(dir == -1){
	image_xscale = -0.8;
}
else{
	image_xscale = 0.8;
}

if(jump != 0){
isJumping = true;
point_direction(x,y,irandom_range(1,8000), irandom_range(1,8000));
}


if(obj_flash.vsp != 0){
	//the angle to rotate to, add 90 degrees to current angle
	Is_Jump = 1; //set to true
}

if(obj_flash.vsp == 0){
	image_angle = 0; 
	Is_Jump = 0;
	sprite_set_offset(spr_batarang, 30, 20);
	
}




rspeed = 5; //the speed of rotation, how fast it rotates

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FACA7AE
/// @DnDArgument : "var" "Is_Jump "
if(Is_Jump  == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 512E3A36
	/// @DnDParent : 0FACA7AE
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "value" "-1"
	if(dir == -1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1FAF56B0
		/// @DnDParent : 512E3A36
		/// @DnDArgument : "x" "obj_flash.x+1000"
		/// @DnDArgument : "y" "obj_flash.y"
		direction = point_direction(x, y, obj_flash.x+1000, obj_flash.y);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0F8D89D0
	/// @DnDParent : 0FACA7AE
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 687F045D
		/// @DnDParent : 0F8D89D0
		/// @DnDArgument : "x" "obj_flash.x+1000"
		/// @DnDArgument : "y" "obj_flash.y"
		direction = point_direction(x, y, obj_flash.x+1000, obj_flash.y);
	}
}