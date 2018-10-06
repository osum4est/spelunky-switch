if (isRoom("rTutorial"))
{
    // do nothing
}
else if (global.darkLevel)
{
    if (global.hasCrown) global.message = global.TheHedjetShinesBrightly;
    else global.message = global.ICanTSeeAThing;
    if (global.hasCrown) global.message2 = "";
    else global.message2 = global.IDBetterUseTheseFlares;
    global.messageTimer = 200;
    alarm[1] = 210;
}
else if (global.blackMarket)
{
    global.message = global.WelcomeToTheBlackMarket;
    global.message2 = "";
    global.messageTimer = 200;
    alarm[1] = 210;
}
else if (global.snakePit)
{
    global.message = global.IHearSnakesIHateSnakes;
    global.message2 = "";
    global.messageTimer = 200;
}
else if (global.cemetary)
{
    global.message = global.TheDeadAreRestless;
    global.message2 = "";
    global.messageTimer = 200;
    if (global.lake) alarm[1] = 210;
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
    if (global.sacrificePit) alarm[1] = 210;
}
else if (global.sacrificePit)
{
    global.message = global.ICanHearPrayersToKali;
    global.message2 = "";
    global.messageTimer = 200;
}
