ini_open("spelunky.ini")

if (oPlayer1.y < 156)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    draw_text(128+16, 32, string_hash_to_newline(global.SecretChallenges));
    draw_set_color(c_white);
    tMini1 = floor(ini_read_real("highscore","value10",0) / 10000);
    tMini2 = floor((ini_read_real("highscore","value10",0)-(tMini1*10000)) / 100);
    tMini3 = floor(ini_read_real("highscore","value10",0)-(tMini1*10000)-(tMini2*100));
    draw_text(128, 48, string_hash_to_newline(global.Sun + string(tMini1)));
    draw_text(128, 64, string_hash_to_newline(global.Moon + string(tMini2)));
    draw_text(128, 80, string_hash_to_newline(global.Stars + string(tMini3)));
    
    if (oPlayer1.y < 48+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline(global.SunRoom));
        draw_set_color(c_white);
        if (tMoney >= sunGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline(global.KeepYourselfAnd));
                draw_text(128, 128, string_hash_to_newline(global.TheDamselAlive));
                draw_text(128, 144, string_hash_to_newline(global.ForAsLongAs));
                draw_text(128, 160, string_hash_to_newline(global.Possible));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline(global.Locked));
        }
    }
    else if (oPlayer1.y < 80+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline(global.MoonRoom));
        draw_set_color(c_white);
        if (tTime > 0 and tTime <= moonGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline(global.ShootTheMoving));
                draw_text(128, 128, string_hash_to_newline(global.TargetsWithYour));
                draw_text(128, 144, string_hash_to_newline(global.BowAndArrows));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline(global.Locked));
        }
    }
    else if (oPlayer1.y < 112+16)
    {
        draw_set_color(c_yellow);
        draw_text(168, 96, string_hash_to_newline(global.StarsRoom));
        draw_set_color(c_white);
        if (tKills >= starsGold)
        {
            if (false) // (global.isTunnelMan)
            {
                draw_text(128, 112, string_hash_to_newline("NO MATTOCKS ALLOWED!"));
                draw_text(128, 128, string_hash_to_newline("THIS MEANS YOU!"));
                draw_text(128, 144, string_hash_to_newline(""));
                draw_text(128, 160, string_hash_to_newline(""));
            }
            else
            {
                draw_text(128, 112, string_hash_to_newline(global.KillAsManyAngry));
                draw_text(128, 128, string_hash_to_newline(global.ShopkeepsAsYouCan));
                draw_text(128, 144, string_hash_to_newline(global.BeforeTheyGetYou));
            }
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline(global.Locked));
        }
    }
    else if (oPlayer1.y < 160)
    {
        draw_set_color(c_yellow);
        draw_text(160, 96, string_hash_to_newline(global.ChangingRoom));
        draw_set_color(c_white);
        if (tSaves >= 8)
        {
            draw_text(128, 112, string_hash_to_newline(global.LadyInRed));
        }
        else
        {
            draw_text(128, 112, string_hash_to_newline(global.Locked));
        }
        with oNew
        {
            visible = false;
        }
    }
    
}
else
{
with oNew
{
    visible = true;
}
draw_set_font(global.myFontSmall);
draw_set_color(c_yellow);
draw_text(160, 32, string_hash_to_newline(global.TopDefilers));
draw_set_color(c_white);
draw_text(128, 48, string_hash_to_newline(global.Money2  + string(ini_read_real("highscore","value1",0)-0)));
draw_text(128, 64, string_hash_to_newline(global.Kills2 + string(ini_read_real("highscore","value3",0)-0)));
draw_text(128, 80, string_hash_to_newline(global.Saves + string(ini_read_real("highscore","value4",0)-0)));
// only display time if won
if (ini_read_real("highscore","value6",0)-0 > 0)
{
    s = ini_read_real("highscore","value2",0)-0;
    // s = floor(s / 1000);
    m = 0;
    while (s > 59)
    {
        s -= 60;
        m += 1;
    }
    
    draw_set_color(c_white);
    draw_text(128, 96, string_hash_to_newline(global.Time2));
    if (s < 10) draw_text(128+64, 96, string_hash_to_newline(string(m) + ":0" + string(s)));
    else draw_text(128+64, 96, string_hash_to_newline(string(m) + ":" + string(s)));
}
draw_set_color(c_yellow);
draw_text(168, 112, string_hash_to_newline(global.Statistics));
draw_set_color(c_white);
draw_text(128, 128, string_hash_to_newline(global.Plays + string(ini_read_real("highscore","value5",0)-0)));
draw_text(128, 144, string_hash_to_newline(global.Deaths + string(ini_read_real("highscore","value7",0)-0)));
draw_text(128, 160, string_hash_to_newline(global.Wins + string(ini_read_real("highscore","value6",0)-0)));

block = instance_nearest(160, 240, oPushBlock);
if (not oButtonHighscore.pushed and block.x > 160)
{
    draw_set_font(global.myFontSmall);
    draw_set_color(c_yellow);
    strLen = string_length(global.ThisWillClearEverything)*8;
    n = global.display_w - strLen;
    n = ceil(n / 2);
    draw_text(n-global.room_offset, 216, string_hash_to_newline(string(global.ThisWillClearEverything)));
}}


ini_close()

