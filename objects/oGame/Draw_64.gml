/// @description Draw the HUD

display_set_gui_size(global.display_w,global.display_h)

scrDrawHUD()

if (global.messageTimer > 0)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    strLen = string_length(global.message)*8;
    n = global.display_w - strLen;
    n = ceil(n / 2);
    draw_text(n, 216, string_hash_to_newline(string(global.message)));

    if (not isRoom("rTutorial")) draw_set_color(c_yellow);
    strLen = string_length(global.message2)*8;
    n = global.display_w - strLen;
    n = ceil(n / 2);
    draw_text(n, 224, string_hash_to_newline(string(global.message2)));

    global.messageTimer -= 1;
}

///TouchInput
if (global.mobileBuild == true)
{
    scrTouchInputEnable();
}

///Pause
if (paused)
{   
    strLen = string_length(global.Paused)*16;
    posX = ceil((global.display_w - strLen) / 2);
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    
    if (global.mobileBuild)
    {
        draw_text(posX, 112, string_hash_to_newline(global.Paused));
    }
    else
    {
        draw_text(posX, 100, string_hash_to_newline(global.Paused));
        strLen = string_length(global.EscReturnF10Quit)*8;
        posX = ceil((global.display_w - strLen) / 2);
        draw_set_font(global.myFontSmall);
        draw_text(posX, 120, string_hash_to_newline(global.EscReturnF10Quit));
    }
}


