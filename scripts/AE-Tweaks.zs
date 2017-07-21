import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Loading AE-Tweaks, by Covers1624! \\o/");
//Cables.
val quartz_fiber = <appliedenergistics2:part:140>;
val glass_cable = <appliedenergistics2:part:16>;
val covered_cable = <appliedenergistics2:part:36>;
val dense_cable = <appliedenergistics2:part:76>;
val smart_cable = <appliedenergistics2:part:56>;

//Parts
val cable_anchor = <appliedenergistics2:part:120>;
val toggle_bus = <appliedenergistics2:part:80>;
val toggle_bus_inverted = <appliedenergistics2:part:100>;
val terminal = <appliedenergistics2:part:380>;

val iluminated_panel = <appliedenergistics2:part:180>;
val dark_illuminated_panel = <appliedenergistics2:part:200>;

val growth_accelerator = <appliedenergistics2:quartz_growth_accelerator>;

//Items
val certus_knife = <appliedenergistics2:certus_quartz_cutting_knife>;
val nether_knife = <appliedenergistics2:nether_quartz_cutting_knife>;
val quartz_glass = <appliedenergistics2:quartz_glass>;
val booster_card = <appliedenergistics2:material:42>;
val logic_processor = <appliedenergistics2:material:22>;
val calculation_processor = <appliedenergistics2:material:23>;
val formation_core = <appliedenergistics2:material:43>;
val annihilation_core = <appliedenergistics2:material:44>;
val advanced_card = <appliedenergistics2:material:28>;
val engineering_processor = <appliedenergistics2:material:24>;
val basic_card = <appliedenergistics2:material:25>;
val fuzzy_card = <appliedenergistics2:material:29>;
val paint_ball = <appliedenergistics2:paint_ball>;
val matter_ball = <appliedenergistics2:material:6>;
val block_fluix = <appliedenergistics2:fluix_block>;
val io_port = <appliedenergistics2:io_port>;
val drive = <appliedenergistics2:drive>;
val cell_workbench = <appliedenergistics2:cell_workbench>;
val chest = <appliedenergistics2:chest>;
val spacial_io_port = <appliedenergistics2:spatial_io_port>;
val spacial_pylon = <appliedenergistics2:spatial_pylon>;
val quantum_ring = <appliedenergistics2:quantum_ring>;
val energy_cell = <appliedenergistics2:energy_cell>;
val storage_16k = <appliedenergistics2:material:37>;
val security_station = <appliedenergistics2:security_station>;
val wireless_ap = <appliedenergistics2:wireless_access_point>;

//Ores
val ore_glass = <ore:blockGlass>;
val ore_redstone = <ore:dustRedstone>;
val ore_glowstone = <ore:dustGlowstone>;
val ore_ingot_iron = <ore:ingotIron>;
val ore_ingot_gold = <ore:ingotGold>;
val ore_dust_fluix = <ore:dustFluix>;
val ore_gem_diamond = <ore:gemDiamond>;

//Custom ores.
val list_quartz_dust = <ore:listAllDustQuartz>;
val list_crystal_fluix = <ore:listAllCrystalFluix>;
val list_ingots = <ore:listAllIngot>;
val list_certus_quartz = <ore:listAllCrystalCertusQuartz>;
val list_nether_quartz = <ore:listAllCrystalNetherQuartz>;

//Seeds
val certus_seed = <appliedenergistics2:crystal_seed>.withTag({progress: 0});
val nether_seed = <appliedenergistics2:crystal_seed:600>.withTag({progress: 600});
val fluix_seed = <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200});

//Init custom ores.
list_quartz_dust.addAll(<ore:dustCertusQuartz>);
list_quartz_dust.addAll(<ore:dustNetherQuartz>);

list_crystal_fluix.addAll(<ore:crystalFluix>);
list_crystal_fluix.addAll(<ore:crystalPureFluix>);

list_certus_quartz.addAll(<ore:crystalCertusQuartz>);
list_certus_quartz.add(<appliedenergistics2:material:10>);
list_certus_quartz.add(<appliedenergistics2:material:1>);

list_nether_quartz.add(<minecraft:quartz>);
list_nether_quartz.add(<appliedenergistics2:material:11>);

list_ingots.addAll(<ore:ingotIron>);
list_ingots.addAll(<ore:ingotCopper>);
list_ingots.addAll(<ore:ingotTin>);
list_ingots.addAll(<ore:ingotSilver>);
list_ingots.addAll(<ore:ingotLead>);
list_ingots.addAll(<ore:ingotBronze>);
list_ingots.addAll(<ore:ingotBrass>);
list_ingots.addAll(<ore:ingotNickel>);
list_ingots.addAll(<ore:ingotInvar>);

//Remove recipes.
print("Removing Recipes..");
recipes.removeShaped(quartz_fiber);
recipes.removeShapeless(glass_cable);
recipes.removeShapeless(cable_anchor);
recipes.removeShapeless(covered_cable);
recipes.removeShapeless(dense_cable);
recipes.removeShaped(toggle_bus);
recipes.removeShaped(iluminated_panel);
recipes.removeShapeless(smart_cable);
removeCableRecipes(0);
removeCableRecipes(20);
removeCableRecipes(60);
removeCableRecipes(40);
recipes.removeShaped(booster_card);
recipes.removeShaped(formation_core);
recipes.removeShaped(annihilation_core);
recipes.removeShapeless(fuzzy_card);
recipes.removeShaped(basic_card);
recipes.removeShaped(advanced_card);
removeBulk(0, paint_ball);
removeBulk(20, paint_ball);
recipes.removeShapeless(<appliedenergistics2:crystal_seed>);
recipes.removeShapeless(<appliedenergistics2:crystal_seed:600>);
recipes.removeShapeless(<appliedenergistics2:crystal_seed:1200>);
recipes.removeShaped(growth_accelerator);
recipes.removeShaped(io_port);
recipes.removeShaped(cell_workbench);
recipes.removeShaped(chest);
recipes.removeShaped(drive);
recipes.removeShaped(spacial_io_port);
recipes.removeShaped(spacial_pylon);
recipes.removeShaped(quantum_ring);
recipes.removeShaped(security_station);
recipes.removeShaped(wireless_ap);

//Add recipes.
//Had incorrect output stack size.
recipes.addShaped("quartz_fiber", quartz_fiber * 3, [[ore_glass, ore_glass, ore_glass], [list_quartz_dust, list_quartz_dust, list_quartz_dust], [ore_glass, ore_glass, ore_glass]]);
//Had incorrect output stack size.
recipes.addShapeless("glass_cable", glass_cable * 4, [quartz_fiber, list_crystal_fluix, list_crystal_fluix]);
//Had incorrect output stack size.
recipes.addShapeless("cable_anchor_certus", cable_anchor * 3, [list_ingots, certus_knife.transformDamage()]);
//Had incorrect output stack size.
recipes.addShapeless("cable_anchor_nether", cable_anchor * 3, [list_ingots, nether_knife.transformDamage()]);
//Had no input wool.
recipes.addShapeless("covered_cable", covered_cable, [glass_cable, <ore:blockWool>]);
//Had incorrect number of input covered cables.
recipes.addShapeless("dense_cable", dense_cable, [covered_cable, covered_cable, covered_cable, covered_cable, ore_redstone, ore_glowstone]);
//Had incorrect cable inputs.
recipes.addShaped("toggle_bus", toggle_bus, [[null, ore_redstone, null], [glass_cable, <minecraft:lever>, glass_cable], [null, ore_redstone, null]]);
//Had incorrect output stack size.
recipes.addShaped("illuminated_panel", iluminated_panel * 3, [[null, ore_glowstone, quartz_glass], [ore_ingot_iron, ore_redstone, quartz_glass], [null, ore_glowstone, quartz_glass]]);
//Had incorrect input stacks.
recipes.addShapeless("smart_cable", smart_cable, [covered_cable, ore_redstone, ore_glowstone]);
//ALL these had the incorrect output stack size.
addCableDyingRecipe("glass_cable", 0, glass_cable);
addCableDyingRecipe("covered_cable", 20, covered_cable);
addCableDyingRecipe("dense_cable", 60, dense_cable);
addCableDyingRecipe("smart_cable", 40, smart_cable);
//Had incorrect output stack size.
recipes.addShaped("booster_card", booster_card * 2, [[ore_dust_fluix, list_certus_quartz, <ore:dustEnderPearl>], [ore_ingot_iron, ore_ingot_iron, ore_ingot_iron]]);
recipes.addShaped("formation_core", formation_core * 2, [[list_certus_quartz, ore_dust_fluix, logic_processor]]);
recipes.addShaped("annihilation_core", annihilation_core * 2, [[list_nether_quartz, ore_dust_fluix, logic_processor]]);
recipes.addShapeless("fuzzy_card", fuzzy_card, [advanced_card, <ore:blockWool>]);
recipes.addShaped("basic_card", basic_card * 2, [[ore_ingot_gold, ore_ingot_iron, null], [ore_redstone, calculation_processor, ore_ingot_iron], [ore_ingot_gold, ore_ingot_iron, null]]);
recipes.addShaped("advanced_card", advanced_card * 2, [[ore_gem_diamond, ore_ingot_iron, null], [ore_redstone, calculation_processor, ore_ingot_iron], [ore_gem_diamond, ore_ingot_iron, null]]);
addDyingRecipe("paint_ball", 0, matter_ball, paint_ball);
for meta in 0 to 16 {
	addSurroundRecipe("paint_ball_lumen_" + meta, paint_ball.withDamage(meta + 20), paint_ball.withDamage(meta), ore_glowstone);
}
recipes.addShapeless("certus_seed", certus_seed * 2, [<ore:sand>, <ore:dustCertusQuartz>]);
recipes.addShapeless("nether_seed", nether_seed * 2, [<ore:sand>, <ore:dustNetherQuartz>]);
recipes.addShapeless("fluix_seed", fluix_seed * 2, [<ore:sand>, <ore:dustFluix>]);
recipes.addShaped("growth_accelerator", growth_accelerator, [[ore_ingot_iron, glass_cable, ore_ingot_iron], [quartz_glass, block_fluix, quartz_glass], [ore_ingot_iron, glass_cable, ore_ingot_iron]]);
recipes.addShaped("io_port", io_port, [[ore_glass, ore_glass, ore_glass], [drive, glass_cable, drive], [ore_ingot_iron, logic_processor, ore_ingot_iron]]);
recipes.addShaped("cell_workbench", cell_workbench, [[<ore:blockWool>, calculation_processor, <ore:blockWool>], [ore_ingot_iron, <ore:chestWood>, ore_ingot_iron], [ore_ingot_iron, ore_ingot_iron, ore_ingot_iron]]);
recipes.addShaped("chest", chest, [[ore_glass, terminal, ore_glass], [glass_cable, null, glass_cable], [ore_ingot_iron, list_crystal_fluix, ore_ingot_iron]]);
recipes.addShaped("drive", drive, [[ore_ingot_iron, engineering_processor, ore_ingot_iron], [glass_cable, null, glass_cable], [ore_ingot_iron, engineering_processor, ore_ingot_iron]]);
recipes.addShaped("spacial_io_port", spacial_io_port, [[ore_glass, ore_glass, ore_glass], [glass_cable, io_port, glass_cable], [ore_ingot_iron, engineering_processor, ore_ingot_iron]]);
recipes.addShaped("spacial_pylon", spacial_pylon, [[quartz_glass, glass_cable, quartz_glass], [<ore:dustFluix>, list_crystal_fluix, <ore:dustFluix>], [quartz_glass, glass_cable, quartz_glass]]);
recipes.addShaped("quantum_ring", quantum_ring, [[ore_ingot_iron, logic_processor, ore_ingot_iron], [engineering_processor, energy_cell, dense_cable], [ore_ingot_iron, logic_processor, ore_ingot_iron]]);
recipes.addShaped("security_station", security_station, [[ore_ingot_iron, chest, ore_ingot_iron], [glass_cable, storage_16k, glass_cable], [ore_ingot_iron, engineering_processor, ore_ingot_iron]]);
recipes.addShaped("wireless_ap", wireless_ap, [[<appliedenergistics2:material:41>], [calculation_processor], [glass_cable]]);
 
//Add back secondary casualties..
addUncolourRecipe("glass_cable", 0, glass_cable);
addUncolourRecipe("covered_cable", 20, covered_cable);
addUncolourRecipe("dense_cable", 60, dense_cable);
addUncolourRecipe("smart_cable", 40, smart_cable);
recipes.addShapeless("un_invert_toggle_bus", toggle_bus, [toggle_bus_inverted]);
recipes.addShapeless("un_darken_illum_panel", iluminated_panel, [dark_illuminated_panel]);

//Helper functions

function addUncolourRecipe(name as string, meta_start as int, output as IItemStack) {
	for meta in 0 to 16 {
		recipes.addShapeless(name + "_uncolour_" + meta, output, [<appliedenergistics2:part>.withDamage(meta + meta_start), <minecraft:water_bucket>]);
	}
}

function removeCableRecipes(meta_start as int) {
	removeBulk(meta_start, <appliedenergistics2:part>);
}

function removeBulk(meta_start as int, thing as IItemStack) {
	for meta in 0 to 16 {
		recipes.removeShaped(thing.withDamage(meta + meta_start));
	}
}

function addCableDyingRecipe(name as string, meta_start as int, input as IItemStack) {
	addDyingRecipe(name, meta_start, input, <appliedenergistics2:part>);
}

function addDyingRecipe(name as string, meta_start as int, input as IItemStack, output as IItemStack) {
	addSurroundRecipe(name + "_colour_0" , output.withDamage(0  + meta_start), input, <ore:dyeWhite>);
	addSurroundRecipe(name + "_colour_1" , output.withDamage(1  + meta_start), input, <ore:dyeOrange>);
	addSurroundRecipe(name + "_colour_2" , output.withDamage(2  + meta_start), input, <ore:dyeMagenta>);
	addSurroundRecipe(name + "_colour_3" , output.withDamage(3  + meta_start), input, <ore:dyeLightBlue>);
	addSurroundRecipe(name + "_colour_4" , output.withDamage(4  + meta_start), input, <ore:dyeYellow>);
	addSurroundRecipe(name + "_colour_5" , output.withDamage(5  + meta_start), input, <ore:dyeLime>);
	addSurroundRecipe(name + "_colour_6" , output.withDamage(6  + meta_start), input, <ore:dyePink>);
	addSurroundRecipe(name + "_colour_7" , output.withDamage(7  + meta_start), input, <ore:dyeGray>);
	addSurroundRecipe(name + "_colour_8" , output.withDamage(8  + meta_start), input, <ore:dyeLightGray>);
	addSurroundRecipe(name + "_colour_9" , output.withDamage(9  + meta_start), input, <ore:dyeCyan>);
	addSurroundRecipe(name + "_colour_10", output.withDamage(10 + meta_start), input, <ore:dyePurple>);
	addSurroundRecipe(name + "_colour_11", output.withDamage(11 + meta_start), input, <ore:dyeBlue>);
	addSurroundRecipe(name + "_colour_12", output.withDamage(12 + meta_start), input, <ore:dyeBrown>);
	addSurroundRecipe(name + "_colour_13", output.withDamage(13 + meta_start), input, <ore:dyeGreen>);
	addSurroundRecipe(name + "_colour_14", output.withDamage(14 + meta_start), input, <ore:dyeRed>);
	addSurroundRecipe(name + "_colour_15", output.withDamage(15 + meta_start), input, <ore:dyeBlack>);
}

function addSurroundRecipe(name as string, output as IItemStack, ring as IIngredient, center as IIngredient) {
	recipes.addShaped(name, output * 8, [[ring, ring, ring], [ring, center, ring], [ring, ring, ring]]);
}













