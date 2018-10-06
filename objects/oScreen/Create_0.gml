scrReadStats();
scrInit();
//global.fullscreen = true;

instance_destroy();
//instance_create(0,0,oScreenFirst)
//instance_create(0,0,oScreenLast)

py = 0; // player Y coord

// screen base(view_wview and view_hview)
screen_x = 0;
screen_y = 0;
screen_w = display_get_width();
screen_h = display_get_height();
screen_scale =  1; //global.screenScale;
enabled = true;

// pause
pSurf = -1 surface_create(screen_w,screen_h);  //    MJD
canPause = true;
paused = false;

// create a surface for the whole screen to be drawn on
screen = -1; //surface_create(screen_w,screen_h);
darkSurf = surface_create(screen_w,screen_h);

/*
if (screen)
{
    surface_set_target(screen);
    draw_clear(c_black);
}
*/
// set up rooms
aspect_ratio = (screen_w/screen_h);

if (aspect_ratio > 1.71)
{
    w = 430 * screen_scale;
}
else if (aspect_ratio > 1.6)
{
    w = 405 * screen_scale;
}
else if (aspect_ratio > 1.5)
{
    w = 384 * screen_scale;   
}
else if (aspect_ratio > 1.4)
{
    w = 360 * screen_scale; 
}
else if (aspect_ratio > 1.3)
{
    w = 320 * screen_scale; 
}
else if (aspect_ratio = 1.2)
{
    w = 300 * screen_scale; 
}
else
{
    w = 320 * screen_scale; 
}

h = 240 * screen_scale;

global.room_offset = ((w - 320)/2);

//room_set_view(ind, vind, vis, xview, yview, wview, hview, xport, yport, wport, hport, hborder, vborder, hspeed, vspeed, obj);
room_set_view(rIntro,0,true,0,0,w,h,0,0,w,h,128,0,-1,-1,oPDummy3);
room_set_view(rCredits1,0,true,0,0,w,h,0,0,w,h,0,0,0,0,noone);
room_set_view(rCredits2,0,true,0,0,w,h,0,0,w,h,0,0,0,0,noone);
room_set_view(rTitle,0,true,0,0,w,h,0,0,w,h,0,0,0,0,noone);
room_set_view(rHighscores,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rSun,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rMoon,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rStars,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rLevelEditor,0,true,0,0,w,h,0,0,w,h,0,0,-1,-1,noone);
room_set_view(rLoadLevel,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rTutorial,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel2,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rLevel3,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rOlmec,0,true,0,0,w,h,0,0,w,h,128,96,-1,-1,oPlayer1);
room_set_view(rTransition1,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition1x,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition2,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition2x,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition3,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition3x,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rTransition4,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rEnd,0,true,0,0,w,h,0,0,w,h,0,0,0,0,oPDummy);
room_set_view(rEnd2,0,true,-2*global.room_offset,0,w,h,-2*global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rEnd3,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);
room_set_view(rEndCustom,0,true,-global.room_offset,0,w,h,-global.room_offset,0,w,h,0,0,0,0,noone);

conf_x = (w - 160)/2;
conf_y = (h - 120 - 32)/2;

room_set_view(rKeyConfig,0,true,-conf_x,-conf_y,w,h,-conf_x,-conf_y,w,h,0,0,0,0,noone);
room_set_view(rJoyConfig,0,true,-conf_x,-conf_y,w,h,-conf_x,-conf_y,w,h,0,0,0,0,noone);

// this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method
/*if (screen == -1) game_end2();
else*/

// Fake fullscreen (borderless fullscreen window), Windows only.
/*window_set_size(screen_w, screen_h);
window_set_position(0, 0);*/

if (global.fullscreen)
{
window_set_size(screen_w, screen_h);
window_set_fullscreen(true);
}


window_set_size(800, 800/aspect_ratio);
surface_resize(application_surface, w, h);
__view_set( e__VW.WView, 0, w );
__view_set( e__VW.WPort, 0, w );
__view_set( e__VW.HView, 0, h );
__view_set( e__VW.HPort, 0, h );

global.display_w = w;
global.display_h = h;

room_goto_next();

/* */
action_reverse_xdir();
action_path(-1, 0, 0, 0);
action_linear_step(0, 0, 0, 0);
action_linear_step(0, 0, 0, 0);
action_move_to(0, 0);
/*  */
