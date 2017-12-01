#Name: ThermalExpansion.zs
#Author: Feed the Beast

print("Initializing 'ThermalExpansion.zs'...");

#dyanmos
recipes.remove(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}), 
[[null, <thermalfoundation:material:802>, null], [<ore:ingotCopper>, <forestry:thermionic_tubes>, <ore:ingotCopper>], [<ore:gearCopper>, <thermalfoundation:material:514>, <ore:gearCopper>]]);

recipes.remove(<thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}), 
[[null, <extracells:storage.component:4>, null], 
[<ore:ingotTin>, <forestry:thermionic_tubes:1>, <ore:ingotTin>], 
[<ore:gearTin>, <thermalfoundation:material:514>, <ore:gearTin>]]);


recipes.remove(<thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}), 
[[null, <extracells:storage.component:4>, null], 
[<ore:ingotTin>, <forestry:thermionic_tubes:1>, <ore:ingotTin>], 
[<ore:gearTin>, <thermalfoundation:material:514>, <ore:gearTin>]]);

recipes.remove(<thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.addShaped(<thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}), 
[[null, <libvulpes:productdust>, null], 
[<ore:ingotBronze>, <forestry:thermionic_tubes:2>, <ore:ingotBronze>], 
[<ore:gearBronze>, <thermalfoundation:material:514>, <ore:gearBronze>]]);

#energy cell Upgrades
recipes.remove(<thermalfoundation:upgrade>);
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade>,
[[<thermalexpansion:frame:128>, <ore:ingotInvar>, <thermalexpansion:frame:128>], [<ore:ingotInvar>, <ore:gearBronze>, <ore:ingotInvar>], [<ore:dustRedstone>, <ore:ingotInvar>, <ore:dustRedstone>]]);

recipes.addShaped(<thermalfoundation:upgrade:1>,
[[<thermalexpansion:frame:128>, <ore:ingotElectrum>, <thermalexpansion:frame:128>], [<ore:ingotElectrum>, <ore:gearSilver>, <ore:ingotElectrum>], [<ore:blockGlassHardened>, <ore:ingotInvar>, <ore:blockGlassHardened>]]);

recipes.addShaped(<thermalfoundation:upgrade:2>,
[[<thermalexpansion:frame:128>, <ore:ingotSignalum>, <thermalexpansion:frame:128>], [<ore:ingotSignalum>, <ore:gearElectrum>, <ore:ingotSignalum>], [<ore:dustCryotheum>, <ore:ingotSignalum>, <ore:dustCryotheum>]]);

recipes.addShaped(<thermalfoundation:upgrade:3>,
[[<thermalexpansion:frame:128>, <ore:ingotEnderium>, <thermalexpansion:frame:128>], [<ore:ingotEnderium>, <ore:gearLumium>, <ore:ingotEnderium>], [<ore:dustPyrotheum>, <ore:ingotEnderium>, <ore:dustPyrotheum>]]);

#Induction Smelter ink sack
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:dye> *8, <thermalfoundation:material:768> *4, <minecraft:water_bucket>, 800, <minecraft:dye>, 5);



print("Initialized 'ThermalExpansion.zs'");
