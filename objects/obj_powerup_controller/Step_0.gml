/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CDC8D37
/// @DnDArgument : "code" "if (alarm[0]==0){$(13_10)x_create = irandom_range(1000,6000);$(13_10)$(13_10)instance_create_layer(x_create,y,"Instances_2", choose(obj_hp_up,obj_speed_up));$(13_10)alarm[0] = 1000;$(13_10)$(13_10)}$(13_10)$(13_10)if(alarm[0] > 0){$(13_10)	$(13_10)alarm[0] -= 1;$(13_10)$(13_10)}$(13_10)$(13_10)"
if (alarm[0]==0){
x_create = irandom_range(1000,6000);

instance_create_layer(x_create,y,"Instances_2", choose(obj_hp_up,obj_speed_up));
alarm[0] = 1000;

}

if(alarm[0] > 0){
	
alarm[0] -= 1;

}