if (global.lang != "english")
{
    trans_dir = working_directory + "translations/" + global.lang
    trans_img_dir = trans_dir + "/images/"
    
    sLevel5SignNew = sprite_add(trans_img_dir + "level5_sign.png", 1, false, false, 0, 0);
    oLevel5Sign.sprite_index = sLevel5SignNew;
    
    sQuitSignNew = sprite_add(trans_img_dir + "quit_sign.png", 1, false, false, 0, 0);
    oQuitSign.sprite_index = sQuitSignNew;
    
    sScoresSignNew = sprite_add(trans_img_dir + "scores_sign.png", 1, false, false, 0, 0);
    oScoresSign.sprite_index = sScoresSignNew;
    
    sStartSignNew = sprite_add(trans_img_dir + "start_sign.png", 1, false, false, 0, 0);
    oStartSign.sprite_index = sStartSignNew;
    
    sTutorialSignNew = sprite_add(trans_img_dir + "tutorial_sign.png", 1, false, false, 0, 0);
    oTutorialSign.sprite_index = sTutorialSignNew;
}