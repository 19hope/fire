
page = 0;

text[0] = "Do you want to buy something or not? if YES  Y   IF MOT  N ";

xBuffer = 10;
yBuffer = 10;

boxHeight = sprite_get_height(spr_dialog);
boxWidth = sprite_get_width(spr_dialog);
stringHeight = string_height(text[0]);

x = obj_player.x;
y = obj_player.y;
x -= boxWidth/2;
y -= boxHeight/2;

charCount = 0;//截取的文本段落字符数量

name = "villager";

instance_deactivate_all(true);