/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0ACD8C9F
/// @DnDArgument : "code" "$(13_10)page = 0;$(13_10)$(13_10)text[0] = "Do you want to buy something or not? if  Y    IF MOT  N ";$(13_10)$(13_10)xBuffer = 10;$(13_10)yBuffer = 10;$(13_10)$(13_10)boxHeight = sprite_get_height(spr_dialog);$(13_10)boxWidth = sprite_get_width(spr_dialog);$(13_10)stringHeight = string_height(text[0]);$(13_10)$(13_10)x = obj_player.x + 2;$(13_10)y = obj_player.y + 2;$(13_10)x -= boxWidth/2;$(13_10)y -= boxHeight/2;$(13_10)$(13_10)$(13_10)creator = "cunming";$(13_10)$(13_10)charCount = 0;//截取的文本段落字符数量$(13_10)$(13_10)name = "villager";$(13_10)constructioned = true;"

page = 0;

text[0] = "Do you want to buy something or not? if  Y    IF MOT  N ";

xBuffer = 10;
yBuffer = 10;

boxHeight = sprite_get_height(spr_dialog);
boxWidth = sprite_get_width(spr_dialog);
stringHeight = string_height(text[0]);

x = obj_player.x + 2;
y = obj_player.y + 2;
x -= boxWidth/2;
y -= boxHeight/2;


creator = "cunming";

charCount = 0;//截取的文本段落字符数量

name = "villager";
constructioned = true;