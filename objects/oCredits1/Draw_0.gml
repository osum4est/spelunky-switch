if (drawStatus == 1)
{
    draw_set_font(global.myFont);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline("SPELUNKY"));
}
else if (drawStatus == 2)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline(global.AGameBy));
    // draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    draw_text(32, 32, string_hash_to_newline("DEREK YU"));
}
else if (drawStatus == 3)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline(global.PlatformEngine));
    draw_set_color(c_white);
    draw_text(16, 24, string_hash_to_newline("MARTIN PIECYK"));
    draw_set_color(c_yellow);
    draw_text(16, 40, string_hash_to_newline(global.SoundEffectsMadeUsing));
    draw_set_color(c_white);
    draw_text(16, 48, string_hash_to_newline("DR PETTER'S SFXR"));
    draw_set_color(c_yellow);
    draw_text(16, 64, string_hash_to_newline(global.ScreenScalingCode));
    draw_set_color(c_white);
    draw_text(16, 72, string_hash_to_newline("CHEVYRAY"));
}
else if (drawStatus == 4)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline(global.MusicBy));
    draw_set_color(c_white);
    draw_text(32, 32, string_hash_to_newline("GEORGE BUZINKAI"));
    draw_text(32, 48, string_hash_to_newline("JONATHAN PERRY"));
}
else if (drawStatus == 5)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline(global.BetaTestingBy));
    draw_set_color(c_white);
    draw_text(16, 24, string_hash_to_newline("ANNABELLE K."));
    draw_text(16, 32, string_hash_to_newline("BENZIDO"));
    draw_text(16, 40, string_hash_to_newline("CHUTUP"));
    draw_text(16, 48, string_hash_to_newline("CORPUS"));
    draw_text(16, 56, string_hash_to_newline("GENERALVALTER"));
    draw_text(16, 64, string_hash_to_newline(global.Guert));
    draw_text(16, 72, string_hash_to_newline("GRAHAM GORING"));
    draw_text(16, 80, string_hash_to_newline("HAOWAN"));
    draw_text(16, 88, string_hash_to_newline("HIDEOUS"));
    draw_text(16, 96, string_hash_to_newline("INANE"));
    //
    draw_text(128, 24, string_hash_to_newline("INCREPARE"));
    draw_text(128, 32, string_hash_to_newline(global.Kao));
    draw_text(128, 40, string_hash_to_newline("MARK JOHNS"));
    draw_text(128, 48, string_hash_to_newline("MELLY"));
    draw_text(128, 56, string_hash_to_newline("PAUL ERES"));
    draw_text(128, 64, string_hash_to_newline("SUPER JOE"));
    draw_text(128, 72, string_hash_to_newline("TANTAN"));
    draw_text(128, 80, string_hash_to_newline("TEAM QUIGGAN"));
    draw_text(128, 88, string_hash_to_newline(global.Terry));
    draw_text(128, 96, string_hash_to_newline("XION"));
    draw_text(128, 104, string_hash_to_newline("ZAPHOS"));
}
else if (drawStatus == 6)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(16, 16, string_hash_to_newline(global.ThanksForPlaying));
    // draw_set_font(global.myFontSmall);
    draw_set_color(c_white);
    draw_text(32, 32, string_hash_to_newline(global.SeeYouNextAdventure));
}

if (fadeIn or fadeOut)
{
    draw_set_color(c_black);
    draw_set_alpha(fadeLevel);
    draw_rectangle(0, 0, global.display_w, 240, false);
    draw_set_alpha(1);
}

