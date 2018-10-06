if (isRoom("rTutorial"))
{
    // do nothing
}
else if (global.snakePit)
{
    global.message = global.IHearSnakesIHateSnakes;
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.cemetary and global.darkLevel)
{
    global.message = global.TheDeadAreRestless;
    global.message2 = "";
    global.messageTimer = 200;
    if (global.lake) alarm[4] = 210;
}
else if (global.lake)
{
    global.message = global.ICanHearRushingWater;
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.yetiLair)
{
    global.message = global.ItSmellsLikeWetFurInHere;
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.alienCraft)
{
    global.message = global.ThereSAPsychicPresenceHere;
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.cityOfGold)
{
    global.message = global.ItSTheLegendaryCityOfGold;
    global.message2 = "";
    global.messageTimer = 200;
    if (global.sacrificePit) alarm[4] = 210;
}
else if (global.sacrificePit)
{
    global.message = global.ICanHearPrayersToKali;
    global.message2 = "";
    global.messageTimer = 200;
}
