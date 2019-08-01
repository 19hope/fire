/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A6C9757
/// @DnDArgument : "code" "//draw textbox $(13_10)draw_rectangle(x-2,y-2, x+boxWidth+2, y+boxHeight+2,false);$(13_10)draw_sprite(spr_dialog, 0, x, y)$(13_10)$(13_10)$(13_10)if (charCount <= string_length(text[page]) ){$(13_10) charCount += 1;//每step显示的文本多加一个字符$(13_10)}$(13_10)$(13_10)// copy part of the tex t$(13_10)textPart = string_copy(text[page], 1, charCount);//截取当前应该显示的文本段落$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Draw the name$(13_10)draw_set_color(c_yellow);$(13_10)var name_xx = x + boxWidth/2;$(13_10)var name_yy = y + yBuffer;$(13_10)draw_set_halign(fa_center);$(13_10)draw_text(name_xx, name_yy, name)$(13_10)$(13_10)//Draw part of the text$(13_10)draw_set_color(c_white);$(13_10)var text_xx = x + xBuffer;$(13_10)var text_yy = y + yBuffer + stringHeight;$(13_10)draw_set_halign(fa_left);$(13_10)draw_text_ext(text_xx, text_yy, textPart, stringHeight, boxWidth- (2 * xBuffer));"
//draw textbox 
draw_rectangle(x-2,y-2, x+boxWidth+2, y+boxHeight+2,false);
draw_sprite(spr_dialog, 0, x, y)


if (charCount <= string_length(text[page]) ){
 charCount += 1;//每step显示的文本多加一个字符
}

// copy part of the tex t
textPart = string_copy(text[page], 1, charCount);//截取当前应该显示的文本段落




//Draw the name
draw_set_color(c_yellow);
var name_xx = x + boxWidth/2;
var name_yy = y + yBuffer;
draw_set_halign(fa_center);
draw_text(name_xx, name_yy, name)

//Draw part of the text
draw_set_color(c_white);
var text_xx = x + xBuffer;
var text_yy = y + yBuffer + stringHeight;
draw_set_halign(fa_left);
draw_text_ext(text_xx, text_yy, textPart, stringHeight, boxWidth- (2 * xBuffer));