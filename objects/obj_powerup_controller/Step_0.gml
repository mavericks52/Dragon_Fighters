/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CDC8D37
/// @DnDArgument : "code" "if (alarm[0]==0){$(13_10)$(13_10)$(13_10)instance_create_layer(x,y,"Instances_2", obj_hp_up);$(13_10)alarm[0] = 1500;$(13_10)$(13_10)}$(13_10)$(13_10)if(alarm[0] > 0){$(13_10)	$(13_10)alarm[0] -= 1;$(13_10)$(13_10)}$(13_10)$(13_10)"
if (alarm[0]==0){


instance_create_layer(x,y,"Instances_2", obj_hp_up);
alarm[0] = 1500;

}

if(alarm[0] > 0){
	
alarm[0] -= 1;

}