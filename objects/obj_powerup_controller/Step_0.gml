/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CDC8D37
/// @DnDArgument : "code" "if (alarm[0]==0){$(13_10)alarm[0] = 1500;$(13_10)x_spawn = irandom_range(1000, 8000);$(13_10)spawn_creation = irandom()$(13_10)instance_create_layer(x,y,"Instances_2",$(13_10)}$(13_10)$(13_10)if(alarm[0] > 0){$(13_10)alarm[0] -= 1;$(13_10)}$(13_10)$(13_10)"
if (alarm[0]==0){
alarm[0] = 1500;
x_spawn = irandom_range(1000, 8000);
spawn_creation = irandom()
instance_create_layer(x,y,"Instances_2",
}

if(alarm[0] > 0){
alarm[0] -= 1;
}