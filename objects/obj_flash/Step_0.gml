/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64D5D4D4
/// @DnDArgument : "code" "key_left = -keyboard_check(ord("A"));$(13_10)key_right =  keyboard_check(ord("D"));$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)dir = sign(image_xscale);$(13_10)$(13_10)//hp powerup$(13_10)if(alarm[1] > 1) {$(13_10)	alarm[1]--;$(13_10)	}$(13_10)if(alarm[1] <= 0) speedMultiplier = 1;$(13_10)$(13_10)//speed powerup $(13_10)if(alarm[0] > 0) {$(13_10)	speedMultiplier = 1.5;$(13_10)	alarm[0]--;$(13_10)	}$(13_10)if(alarm[0] <= 0) speedMultiplier = 1;$(13_10)$(13_10)if(flash_hp <= 0){$(13_10)	hsp = 0;$(13_10)	vsp = 0;$(13_10)	image_index = 1;$(13_10)}$(13_10)else{$(13_10)	hsp = speedMultiplier * walkSpeed * (key_left + key_right);$(13_10)$(13_10)// used later$(13_10)if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;$(13_10)else running = 2;$(13_10)$(13_10)//turn left$(13_10)if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;$(13_10)$(13_10)//turn right$(13_10)if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	$(13_10)$(13_10)//projectile create$(13_10)if (keyboard_check_pressed(ord("Z"))==1 && alarm[2]<=1){$(13_10)	if(dir == 1){$(13_10)	alarm[2] = (fire_rate/0.1);$(13_10)	instance_create_layer(x,y,"particles",obj_lightningBolt);$(13_10)	}$(13_10)	else{$(13_10)	alarm[2] = (fire_rate/0.1);$(13_10)	instance_create_layer(x,y,"particles",obj_lightningBolt);$(13_10)	}$(13_10)}$(13_10)$(13_10)//process gravity$(13_10)if (vsp < MAX_FALL_SPEED) vsp += grav;$(13_10)if(place_meeting(x,y+1,obj_floor)){$(13_10)	jumps_max = 2;$(13_10)	jumps = 1;$(13_10)	$(13_10)}	$(13_10)if(!place_meeting(x,y+1,obj_floor) && (jumps == 1)){$(13_10)	jumps = 2;$(13_10)	$(13_10)}	$(13_10)if ((key_jump) && (jumps <= jumps_max)){$(13_10)	vsp = -jumpSpeed;$(13_10)	jumps += 1;$(13_10)}$(13_10)$(13_10)//shoot animation$(13_10)if (alarm[2] > 0){$(13_10)		animation_image_1 = scr_exhex_to_number(string_char_at(animation_string_1,animation_index_1));$(13_10)		animation_index_1++;$(13_10)		if (animation_index_1 > animation_len_1) animation_index_1=1;$(13_10)			image_index = animation_image_1;$(13_10)		alarm[2]-=1;$(13_10)}$(13_10)else{$(13_10)	$(13_10)//run animation$(13_10)if(running == 1){$(13_10)	animation_image = scr_exhex_to_number(string_char_at(animation_string,animation_index));$(13_10)	animation_index++;$(13_10)	if (animation_index > animation_len) animation_index=1;$(13_10)		image_index = animation_image;$(13_10)}$(13_10)vspp=vsp;$(13_10)if(running == 2 && (vsp >= 0)){$(13_10)	image_index = 0;$(13_10)}$(13_10)else if(running == 2 && (vsp <= 0 )){$(13_10)	image_index = 4 ;$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (alarm[2]>1){hsp = 0 vsp += grav}$(13_10)$(13_10)$(13_10)//collisions$(13_10)if((place_meeting(x + hsp, y, obj_floor)) || (place_meeting(x + hsp, y, obj_boundries_N))){$(13_10)		while(!place_meeting(x + sign(hsp), y, obj_floor) && !place_meeting(x + sign(hsp) , y, obj_boundries_N) ){$(13_10)			x += sign(hsp);	$(13_10)		}$(13_10)		hsp = 0;$(13_10)}$(13_10)$(13_10)$(13_10)if((place_meeting(x, y + vsp, obj_floor)) || (place_meeting(x, y + vsp, obj_boundries_N) )){$(13_10)		while(!place_meeting(x , y + sign(vsp), obj_floor) && !place_meeting(x , y + sign(vsp), obj_boundries_N) ){$(13_10)			y += sign(vsp);	$(13_10)		}$(13_10)		vsp = 0;$(13_10)}$(13_10)}$(13_10)if(place_meeting(x,y+10,obj_boundries_H)){$(13_10)flash_hp = 0;$(13_10)stop = 1;$(13_10)}$(13_10)$(13_10)if(flash_hp == 0){$(13_10)alarm[3] = 200;$(13_10)flash_hp --;$(13_10)}$(13_10)if(alarm[3] = 0){}$(13_10)else alarm[3]--;$(13_10)$(13_10)$(13_10)x +=hsp;$(13_10)y +=vsp;"
key_left = -keyboard_check(ord("A"));
key_right =  keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

dir = sign(image_xscale);

//hp powerup
if(alarm[1] > 1) {
	alarm[1]--;
	}
if(alarm[1] <= 0) speedMultiplier = 1;

//speed powerup 
if(alarm[0] > 0) {
	speedMultiplier = 1.5;
	alarm[0]--;
	}
if(alarm[0] <= 0) speedMultiplier = 1;

if(flash_hp <= 0){
	hsp = 0;
	vsp = 0;
	image_index = 1;
}
else{
	hsp = speedMultiplier * walkSpeed * (key_left + key_right);

// used later
if ((walkSpeed * (key_left + key_right) != 0) && (place_meeting(x, y + 1, obj_floor))) running = 1;
else running = 2;

//turn left
if (walkSpeed * (key_left + key_right) < 0) image_xscale=-1;

//turn right
if (walkSpeed * (key_left + key_right) > 0) image_xscale=+1;	

//projectile create
if (keyboard_check_pressed(ord("Z"))==1 && alarm[2]<=1){
	if(dir == 1){
	alarm[2] = (fire_rate/0.1);
	instance_create_layer(x,y,"particles",obj_lightningBolt);
	}
	else{
	alarm[2] = (fire_rate/0.1);
	instance_create_layer(x,y,"particles",obj_lightningBolt);
	}
}

//process gravity
if (vsp < MAX_FALL_SPEED) vsp += grav;
if(place_meeting(x,y+1,obj_floor)){
	jumps_max = 2;
	jumps = 1;
	
}	
if(!place_meeting(x,y+1,obj_floor) && (jumps == 1)){
	jumps = 2;
	
}	
if ((key_jump) && (jumps <= jumps_max)){
	vsp = -jumpSpeed;
	jumps += 1;
}

//shoot animation
if (alarm[2] > 0){
		animation_image_1 = scr_exhex_to_number(string_char_at(animation_string_1,animation_index_1));
		animation_index_1++;
		if (animation_index_1 > animation_len_1) animation_index_1=1;
			image_index = animation_image_1;
		alarm[2]-=1;
}
else{
	
//run animation
if(running == 1){
	animation_image = scr_exhex_to_number(string_char_at(animation_string,animation_index));
	animation_index++;
	if (animation_index > animation_len) animation_index=1;
		image_index = animation_image;
}
vspp=vsp;
if(running == 2 && (vsp >= 0)){
	image_index = 0;
}
else if(running == 2 && (vsp <= 0 )){
	image_index = 4 ;
}
}



if (alarm[2]>1){hsp = 0 vsp += grav}


//collisions
if((place_meeting(x + hsp, y, obj_floor)) || (place_meeting(x + hsp, y, obj_boundries_N))){
		while(!place_meeting(x + sign(hsp), y, obj_floor) && !place_meeting(x + sign(hsp) , y, obj_boundries_N) ){
			x += sign(hsp);	
		}
		hsp = 0;
}


if((place_meeting(x, y + vsp, obj_floor)) || (place_meeting(x, y + vsp, obj_boundries_N) )){
		while(!place_meeting(x , y + sign(vsp), obj_floor) && !place_meeting(x , y + sign(vsp), obj_boundries_N) ){
			y += sign(vsp);	
		}
		vsp = 0;
}
}
if(place_meeting(x,y+10,obj_boundries_H)){
flash_hp = 0;
stop = 1;
}

if(flash_hp == 0){
alarm[3] = 200;
flash_hp --;
}
if(alarm[3] = 0){}
else alarm[3]--;


x +=hsp;
y +=vsp;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2FC0673D
/// @DnDArgument : "var" "_fx"
/// @DnDArgument : "min" "obj_flash.x-50"
/// @DnDArgument : "max" "obj_flash.x+50"
_fx = (random_range(obj_flash.x-50, obj_flash.x+50));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 151EBF8A
/// @DnDArgument : "var" "_fy"
/// @DnDArgument : "min" "obj_flash.y-130"
/// @DnDArgument : "max" "obj_flash.y+80"
_fy = (random_range(obj_flash.y-130, obj_flash.y+80));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E0E23F4
/// @DnDArgument : "var" "flash_hp"
/// @DnDArgument : "op" "2"
if(flash_hp > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F184AE7
	/// @DnDParent : 4E0E23F4
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "2"
	if(alarm[0] > 0)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5B60D167
		/// @DnDParent : 4F184AE7
		
		{
			/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
			/// @DnDVersion : 1
			/// @DnDHash : 5DE9C26C
			/// @DnDParent : 5B60D167
			/// @DnDArgument : "x" "_fx"
			/// @DnDArgument : "y" "_fy"
			/// @DnDArgument : "system" "global.P_System"
			/// @DnDArgument : "type" "global.Particle1"
			/// @DnDArgument : "number" "5"
			part_particles_create(global.P_System, _fx, _fy, global.Particle1, 5);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C881DCE
	/// @DnDParent : 4E0E23F4
	/// @DnDArgument : "var" "alarm[1]"
	/// @DnDArgument : "op" "2"
	if(alarm[1] > 0)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6A247F82
		/// @DnDParent : 5C881DCE
		
		{
			/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
			/// @DnDVersion : 1
			/// @DnDHash : 04A1C7F8
			/// @DnDParent : 6A247F82
			/// @DnDArgument : "x" "_fx"
			/// @DnDArgument : "y" "_fy"
			/// @DnDArgument : "system" "global.P_System"
			/// @DnDArgument : "type" "global.Particle2"
			/// @DnDArgument : "number" "5"
			part_particles_create(global.P_System, _fx, _fy, global.Particle2, 5);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3FDE9B18
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 100702FC
	/// @DnDParent : 3FDE9B18
	/// @DnDArgument : "var" "alarm[3]"
	/// @DnDArgument : "value" "1"
	if(alarm[3] == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 06A474AA
		/// @DnDApplyTo : 59ae7c0e-9ef2-4bed-b356-d18b2316acee
		/// @DnDParent : 100702FC
		with(obj_flash) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38A23971
	/// @DnDParent : 3FDE9B18
	/// @DnDArgument : "var" "alarm[3]"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "10"
	if(alarm[3] > 10)
	{
		/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
		/// @DnDVersion : 1
		/// @DnDHash : 3A7317BD
		/// @DnDParent : 38A23971
		/// @DnDArgument : "x" "_fx"
		/// @DnDArgument : "y" "_fy"
		/// @DnDArgument : "system" "global.P_System"
		/// @DnDArgument : "type" "global.Particle3"
		/// @DnDArgument : "number" "5"
		part_particles_create(global.P_System, _fx, _fy, global.Particle3, 5);
	}
}