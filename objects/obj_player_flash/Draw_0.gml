/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31E8076D
/// @DnDArgument : "code" "draw_self();$(13_10)if !instance_exists(obj_flash) exit;$(13_10)$(13_10)$(13_10)draw_health_flash = lerp(draw_health_flash,obj_flash.flash_hp, .05);$(13_10)$(13_10)draw_set_color ($007520);$(13_10)draw_rectangle(x+5,y+5,x+292*draw_health_flash/obj_flash.flash_hp_max,y+44,false);$(13_10)draw_set_color(c_white);"
draw_self();
if !instance_exists(obj_flash) exit;


draw_health_flash = lerp(draw_health_flash,obj_flash.flash_hp, .05);

draw_set_color ($007520);
draw_rectangle(x+5,y+5,x+292*draw_health_flash/obj_flash.flash_hp_max,y+44,false);
draw_set_color(c_white);