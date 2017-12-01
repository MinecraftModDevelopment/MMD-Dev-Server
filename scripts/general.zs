#name: general.zs
#Author: Morpheus1101

print("Initializing 'general.zs'...");

#flint'n'steel

recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<minecraft:flint>, <ore:ingotSteel>]);

#Silicon from Sand
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:5>, <minecraft:sand>, 750, <appliedenergistics2:material:5>, 20);

#Forestry Thermionicfabricator - 
recipes.remove(<forestry:fabricator>);
recipes.addShaped(<forestry:fabricator>,
[[<minecraft:gold_ingot>, <minecraft:glass>, <minecraft:gold_ingot>], 
[<minecraft:glass>, <forestry:hardened_machine>, <minecraft:glass>], 
[<minecraft:gold_ingot>, <ironchest:iron_chest:2>, <minecraft:gold_ingot>]]);

#Adv Rocketry 

#HoloProjector 

recipes.remove(<libvulpes:holoprojector>);
recipes.addShaped(<libvulpes:holoprojector>,
[[<minecraft:glass_pane>, <minecraft:beacon>, <minecraft:glass_pane>], 
[<twilightforest:torchberries>, <minecraft:glowstone_dust>, <twilightforest:torchberries>], 
[null, <thermalfoundation:material:33>, null]]);

#HeatProof Brick
recipes.remove(<advancedrocketry:blastbrick>);
recipes.addShaped(<advancedrocketry:blastbrick>,
[[<minecraft:magma_cream>, <minecraft:magma_cream>, <forestry:climatiser:1>], 
[<forestry:climatiser:1>, <forestry:climatiser:1>, <forestry:climatiser:1>], 
[null, null, null]]);

#Ender Tanks
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>,
[[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>], 
[<minecraft:obsidian>, <minecraft:cauldron>, <minecraft:obsidian>],
[<minecraft:blaze_rod>, <forestry:thermionic_tubes:12>, <minecraft:blaze_rod>]]);

#Ender Chest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>,
[[<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>], 
[<minecraft:obsidian>, <ironchest:iron_chest:2>, <minecraft:obsidian>],
[<minecraft:blaze_rod>, <rftools:infused_enderpearl>, <minecraft:blaze_rod>]]);

#rftools builder
recipes.remove(<rftools:builder>);
<rftools:builder>.addTooltip(format.darkRed("Quest Reward Item Only"));

#Draconic Celestial manipulator
recipes.remove(<draconicevolution:celestial_manipulator>);
recipes.addShaped(<draconicevolution:celestial_manipulator>,
[[<ore:blockRedstone>, <biomesoplenty:crystal>, <ore:blockRedstone>], 
[<draconicevolution:draconic_ingot>, <minecraft:dragon_egg>, <draconicevolution:draconic_ingot>],
[<minecraft:iron_ingot>, <draconicevolution:awakened_core>, <minecraft:iron_ingot>]]);



print("Finished Initializing 'General.zs'");