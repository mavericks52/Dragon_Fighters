/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C917F66
/// @DnDArgument : "code" "image_yscale = 0.2;$(13_10)knockback_force = 75;$(13_10)$(13_10)Is_Jump = 0;$(13_10)Point_dir = 0;$(13_10)dir = sign(obj_batman.image_xscale);$(13_10)jump = obj_batman.vsp;$(13_10)damage = 5;$(13_10)$(13_10)$(13_10)if(dir == -1){$(13_10)	image_xscale = -0.2;$(13_10)}$(13_10)else{$(13_10)	image_xscale = 0.2;$(13_10)}$(13_10)$(13_10)if(jump != 0){$(13_10)isJumping = true;$(13_10)point_direction(x,y,irandom_range(1,8000), irandom_range(1,8000));$(13_10)}$(13_10)$(13_10)$(13_10)if(obj_batman.vsp != 0){$(13_10)	Point_dir = image_angle + 90; //the angle to rotate to, add 90 degrees to current angle$(13_10)	Is_Jump = 1; //set to true$(13_10)}$(13_10)$(13_10)if(obj_batman.vsp == 0){$(13_10)	image_angle = 0; $(13_10)	Is_Jump = 0;$(13_10)	sprite_set_offset(spr_batarang, 30, 20);$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)rspeed = 5; //the speed of rotation, how fast it rotates$(13_10)$(13_10)"
image_yscale = 0.2;
knockback_force = 75;

Is_Jump = 0;
Point_dir = 0;
dir = sign(obj_batman.image_xscale);
jump = obj_batman.vsp;
damage = 5;


if(dir == -1){
	image_xscale = -0.2;
}
else{
	image_xscale = 0.2;
}

if(jump != 0){
isJumping = true;
point_direction(x,y,irandom_range(1,8000), irandom_range(1,8000));
}


if(obj_batman.vsp != 0){
	Point_dir = image_angle + 90; //the angle to rotate to, add 90 degrees to current angle
	Is_Jump = 1; //set to true
}

if(obj_batman.vsp == 0){
	image_angle = 0; 
	Is_Jump = 0;
	sprite_set_offset(spr_batarang, 30, 20);
	
}




rspeed = 5; //the speed of rotation, how fast it rotates

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55E8E176
/// @DnDArgument : "var" "Is_Jump "
if(Is_Jump  == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45965E85
	/// @DnDParent : 55E8E176
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "value" "-1"
	if(dir == -1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7A8A0C79
		/// @DnDParent : 45965E85
		/// @DnDArgument : "x" "obj_batman.x+1000"
		/// @DnDArgument : "y" "obj_batman.y-97"
		direction = point_direction(x, y, obj_batman.x+1000, obj_batman.y-97);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1EF1F687
	/// @DnDParent : 55E8E176
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4C73567D
		/// @DnDParent : 1EF1F687
		/// @DnDArgument : "x" "obj_batman.x+1000"
		/// @DnDArgument : "y" "obj_batman.y-100"
		direction = point_direction(x, y, obj_batman.x+1000, obj_batman.y-100);
	}
}