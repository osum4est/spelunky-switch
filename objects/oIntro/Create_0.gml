fadeIn = false;
fadeOut = false;
fadeLevel = 1;
// instance_create(-32, 184, oPDummy3);

randomize();

drawStatus = 0;
alarm[11] = 20;

str = "";
n = round(random_range(1,8));
switch (n)
{
    case 1: { str1 = global.AsTheMoonBurnedBrightAbove; break; }
    case 2: { str1 = global.WithTheDesertStretchingBehindMe; break; }
    case 3: { str1 = global.AfterIDoubleCheckedMyMap; break; }
    case 4: { str1 = global.MyLipsCrackedAndCoveredInSand; break; }
    case 5: { str1 = global.WithFateGuidingMyEveryMove; break; }
    case 6: { str1 = global.PuttingTheFadedPhotoInMyPocket; break; }
    case 7: { str1 = global.AsIRecalledMyFatherSLastWords; break; }
    case 8: { str1 = global.MyMemorySlippingAwayFromMe; break; }
}
n = round(random_range(1,8));
switch (n)
{
    case 1: { str2 = global.IStrodeValiantlyTowardMyDestiny; break; }
    case 2: { str2 = global.ISqueezedTheWhipAtMySide; break; }
    case 3: { str2 = global.IDrainedTheRestOfMyCanteen; break; }
    case 4: { str2 = global.ISpottedTheCaveSEntrance; break; }
    case 5: { str2 = global.IFurrowedMyBrow; break; }
    case 6: { str2 = global.IPaidMyBedouinGuide; break; }
    case 7: { str2 = global.IDismountedMyCamel; break; }
    case 8: { str2 = global.ISquintedIntoTheDarkness; break; }
}
n = round(random_range(1,8));
switch (n)
{
    case 1: { str3 = global.AndThoughtOfHerOneLastTime; break; }
    case 2: { str3 = global.AndHeldMyHatAgainstTheWind; break; }
    case 3: { str3 = global.AndAColdChillTookHoldOfMe; break; }
    case 4: { str3 = global.AndWonderedHowLongIDBeBelow; break; }
    case 5: { str3 = global.AndVowedToReturnVictorious; break; }
    case 6: { str3 = global.AndSworeIHeardVoicesUpAhead; break; }
    case 7: { str3 = global.AndFeltTheGodsSmilingUponMe; break; }
    case 8: { str3 = global.AndThatSWhenItAllStarted; break; }
}

