/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31E8076D
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)$(13_10)draw_health_ = lerp(draw_health_,obj_batman.batman_hp, .05);$(13_10)$(13_10)draw_set_color ($007520);$(13_10)draw_rectangle(x+5.25,y+5,x+294.5*draw_health_/obj_batman.batman_max_hp,y+44,false);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)/*if(obj_batman.death_animation == 0 && live < live_max && live > 0 ){$(13_10)	live = live -1;$(13_10)	instance_create_layer(6500,2700,"instances_2",obj_batman);$(13_10)}$(13_10)if (live = 2){$(13_10)draw_sprite(spr_lives,1,x+20,y-20);$(13_10)draw_sprite(spr_lives,1,x+20,y-20);$(13_10)$(13_10)}$(13_10)if(live = 1){$(13_10)draw_sprite(spr_lives,1,x+20,y-20);$(13_10)}$(13_10)*/"
draw_self();


draw_health_ = lerp(draw_health_,obj_batman.batman_hp, .05);

draw_set_color ($007520);
draw_rectangle(x+5.25,y+5,x+294.5*draw_health_/obj_batman.batman_max_hp,y+44,false);
draw_set_color(c_white);

/*if(obj_batman.death_animation == 0 && live < live_max && live > 0 ){
	live = live -1;
	instance_create_layer(6500,2700,"instances_2",obj_batman);
}
if (live = 2){
draw_sprite(spr_lives,1,x+20,y-20);
draw_sprite(spr_lives,1,x+20,y-20);

}
if(live = 1){
draw_sprite(spr_lives,1,x+20,y-20);
}
*//**/