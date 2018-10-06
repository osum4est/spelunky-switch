draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
strLen = string_length("PRESS BUTTON FOR")*8;
n = 160 - strLen;
n = ceil(n / 2);
draw_text(n, 32, string_hash_to_newline("PRESS BUTTON FOR"));
draw_text(8, 96, string_hash_to_newline(global.EscToKeepSame));
draw_text(8, 104, string_hash_to_newline(global.Current));

if (not joystick_exists(1))
{
    draw_set_color(c_red);
    draw_text(8, 88, string_hash_to_newline("NO GAMEPAD FOUND!"));
}

if (status == 0)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Jump)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Jump));
    currVal = global.joyJumpVal;
}
else if (status == 1)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Action)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Action));
    currVal = global.joyAttackVal;
}
else if (status == 2)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Switch)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Switch));
    currVal = global.joyItemVal;
}
else if (status == 3)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Run)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Run));
    currVal = global.joyRunVal;
}
else if (status == 4)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Bomb)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Bomb));
    currVal = global.joyBombVal;
}
else if (status == 5)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Rope)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Rope));
    currVal = global.joyRopeVal;
}
else if (status == 6)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Flare)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Flare));
    currVal = global.joyFlareVal;
}
else if (status == 7)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length(global.Purchase)*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline(global.Purchase));
    currVal = global.joyPayVal;
}
else if (status == 8)
{
    draw_set_font(global.myFont);
    draw_set_color(c_white);
    strLen = string_length("START")*16;
    n = 160 - strLen;
    n = ceil(n / 2);
    draw_text(n, 40, string_hash_to_newline("START"));
    currVal = global.joyStartVal;
}

draw_set_font(global.myFontSmall);
switch (currVal)
{
    case 1: { draw_text(80, 104, string_hash_to_newline("B1")); break; }
    case 2: { draw_text(80, 104, string_hash_to_newline("B2")); break; }
    case 3: { draw_text(80, 104, string_hash_to_newline("B3")); break; }
    case 4: { draw_text(80, 104, string_hash_to_newline("B4")); break; }
    case 5: { draw_text(80, 104, string_hash_to_newline("B5")); break; }
    case 6: { draw_text(80, 104, string_hash_to_newline("B6")); break; }
    case 7: { draw_text(80, 104, string_hash_to_newline("B7")); break; }
    case 8: { draw_text(80, 104, string_hash_to_newline("B8")); break; }
    case 9: { draw_text(80, 104, string_hash_to_newline("B9")); break; }
    case 10: { draw_text(80, 104, string_hash_to_newline("B10")); break; }
    case -1: { draw_text(80, 104, string_hash_to_newline("LT (XB)")); break; }
    case -2: { draw_text(80, 104, string_hash_to_newline("RT (XB)")); break; }
    default: { draw_text(80, 104, string_hash_to_newline("B" + string(currVal))); break; }
}


