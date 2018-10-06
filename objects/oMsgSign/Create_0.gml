type = "Message Sign";

// tutorial cave init
if (isRoom("rLevelEditor") or isRoom("rLoadLevel"))
{
    message = "";
    message2 = "";
}
else if (x == 32 and y == 64)
{
    message = global.WelcomeToTheTutorialCave;
    message2 = global.ThisMightBeYourFirstTimePlaying;

}
else if (x == 80 and y == 96)
{
    if (global.gamepadOn) message = global.Press + scrGetJoy(global.joyJumpVal) + global.ToJump;
    else message = global.Press + scrGetKey(global.keyJumpVal) + global.ToJump;
    message2 = "";

}
else if (x == 176 and y == 96)
{
    message = global.YouCanHangOnLedgesToo;
    message2 = "";

}
else if (x == 240 and y == 64)
{
    if (global.gamepadOn) message = global.Press + scrGetJoy(global.joyAttackVal) + global.ToUseYourWhip;
    else message = global.Press + scrGetKey(global.keyAttackVal) + global.ToUseYourWhip;
    message2 = "";

}
else if (x == 384 and y == 96)
{
    message = global.CollectTheTreasure;
    message2 = "";

}
else if (x == 512 and y == 32)
{
    if (global.gamepadOn) message = global.HoldUpAndPress + scrGetJoy(global.joyAttackVal) + global.ToOpenChests;
    else message = global.HoldUpAndPress + scrGetKey(global.keyAttackVal) + global.ToOpenChests;
    message2 = "";

}
else if (x == 544 and y == 112)
{
    message = global.HoldDownToDuckAndCrawl;
    message2 = "";

}
else if (x == 576 and y == 128)
{
    message = global.CrawlOverTheEdgeToDoAFlipHang;
    message2 = global.FallingTooFarCanReallyHurt;

}
else if (x == 640 and y == 96)
{
    message = global.HoldUpToClimbTheLadder;
    message2 = "";

}
else if (x == 608 and y == 256)
{
    if (global.gamepadOn) message = global.DuckAndPress + scrGetJoy(global.joyAttackVal) + global.ToPickUpItems;
    else message = global.DuckAndPress + scrGetKey(global.keyAttackVal) + global.ToPickUpItems;
    message2 = "";

}
else if (x == 576 and y == 256)
{
    if (global.gamepadOn) message = global.Press + scrGetJoy(global.joyAttackVal) + global.ToThrowOrUseItems;
    else message = global.Press + scrGetKey(global.keyAttackVal) + global.ToThrowOrUseItems;
    message2 = global.HoldUpToThrowHighAndDownToDrop;

}
else if (x == 496 and y == 256)
{
    if (global.gamepadOn) message = global.Press + scrGetJoy(global.joyItemVal) + global.ToSelectYourRopeAnd;
    else message = global.Press + scrGetKey(global.keyItemVal) + global.ToSelectYourRopeAnd;
    if (global.gamepadOn) message2 = scrGetJoy(global.joyAttackVal) + global.ToUseIt;
    else message2 = scrGetKey(global.keyAttackVal) + global.ToUseIt;

}
else if (x == 432 and y == 176)
{
    if (global.gamepadOn) message = global.CrouchAndPress + scrGetJoy(global.joyAttackVal);
    else message = global.CrouchAndPress + scrGetKey(global.keyAttackVal);
    message2 = global.ToThrowARopeDownALedge;

}
else if (x == 384 and y == 208)
{
    if (global.gamepadOn) message = global.ToRunHoldDown + scrGetJoy(global.joyAttackVal) + global.Or + scrGetJoy(global.joyRunVal) + ".";
    else message = global.ToRunHoldDown + scrGetKey(global.keyAttackVal) + global.Or + scrGetKey(global.keyRunVal) + ".";
    message2 = "";
}
else if (x == 256 and y == 208)
{
    message = global.OpenThisCrateForABagOfBombs;
    message2 = "";

}
else if (x == 224 and y == 208)
{
    if (global.gamepadOn) message = global.Press + scrGetJoy(global.joyItemVal) + global.ToSelectBombsAnd;
    else message = global.Press + scrGetKey(global.keyItemVal) + global.ToSelectBombsAnd;
    if (global.gamepadOn) message2 =  global.Press + scrGetJoy(global.joyAttackVal) + global.ToUseIt;
    else message2 =  global.Press + scrGetKey(global.keyAttackVal) + global.ToUseIt;

}
else if (x == 96 and y == 256)
{
    message = global.ThereSLotsMoreAhead;
    message2 = global.UseYourWitsAndBewareOfTraps;

}
