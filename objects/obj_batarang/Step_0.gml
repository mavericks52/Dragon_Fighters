/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 122CE6DF
/// @DnDArgument : "code" "point_direction(x, y, x+8000, y);$(13_10)if(dir < 1){$(13_10)	speed = -30;$(13_10)}$(13_10)else{$(13_10)	speed = 30;$(13_10)}$(13_10)if (Is_Rotating == 1) //if its set to rotate the object$(13_10){$(13_10)     image_angle += 2;$(13_10)}"
point_direction(x, y, x+8000, y);
if(dir < 1){
	speed = -30;
}
else{
	speed = 30;
}
if (Is_Rotating == 1) //if its set to rotate the object
{
     image_angle += 2;
}