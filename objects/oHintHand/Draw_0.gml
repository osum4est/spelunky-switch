if (instance_exists(oPlayer1))
{
    if (abs(oPlayer1.x - (x+8)) < 8)
    {    
        draw_set_font(global.myFontSmall);
        draw_set_color(c_white);
        strLen = string_length(global.PressUpToEnter)*8;
        n = 320 - strLen;
        n = ceil(n / 2);
        draw_text(320+n, 216, string_hash_to_newline(string(global.PressUpToEnter)));
    }
}

draw_sprite(sprite_index, image_index, x, y);
