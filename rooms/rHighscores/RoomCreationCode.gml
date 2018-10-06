if (global.lang != "english")
{
    trans_dir = working_directory + "translations/" + global.lang
    trans_img_dir = trans_dir + "/images/"
    
    sResetSignNew = sprite_add(trans_img_dir + "/reset_sign.png", 1, false, false, 0, 0);
    oResetSign.sprite_index = sResetSignNew;
}