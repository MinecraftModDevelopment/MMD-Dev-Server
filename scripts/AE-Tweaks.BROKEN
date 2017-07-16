print("Loading AE-Tweaks, by Covers1624! \\o/");
val mc_glass  = <minecraft:glass>;
val certus_dust = <appliedenergistics2:material:2>;

val quartz_fiber = <appliedenergistics2:part:140>;
val glass_cable = <appliedenergistics2:part:16>;
val fluix_covered_cable = <appliedenergistics2:part:36>;

val fluix_crystal = <appliedenergistics2:material:7>;
val pure_fluix_crystal = <appliedenergistics2:material:12>;

val cable_anchor = <appliedenergistics2:part:120>;
val certus_knife = <appliedenergistics2:certus_quartz_cutting_knife>;
val nether_knife = <appliedenergistics2:nether_quartz_cutting_knife>;

val list_quartz_dust = <ore:listAllDustQuartz>;
val list_crystal_fluix = <ore:listAllCrystalFluix>;
val list_ingots = <ore:listAllIngot>;

print("Removing Quartz Fiber Recipe..");
recipes.removeShaped(quartz_fiber, [[mc_glass, mc_glass, mc_glass], [certus_dust, certus_dust, certus_dust], [mc_glass, mc_glass, mc_glass]]);
print("Removing Glass Cable Recipe..");
recipes.removeShapeless(glass_cable, [quartz_fiber, fluix_crystal]);
print("Removing Cable Anchor Recipe..");
recipes.removeShapeless(cable_anchor, [<minecraft:iron_ingot>, <appliedenergistics2:certus_quartz_cutting_knife>]);
print("Removing Covered Cable Recipe..");
recipes.removeShapeless(fluix_covered_cable);
	
list_quartz_dust.addAll(<ore:dustCertusQuartz>);
list_quartz_dust.addAll(<ore:dustNetherQuartz>);

list_crystal_fluix.addAll(<ore:crystalFluix>);
list_crystal_fluix.addAll(<ore:crystalPureFluix>);

list_ingots.addAll(<ore:ingotIron>);
list_ingots.addAll(<ore:ingotCopper>);
list_ingots.addAll(<ore:ingotTin>);
list_ingots.addAll(<ore:ingotSilver>);
list_ingots.addAll(<ore:ingotLead>);
list_ingots.addAll(<ore:ingotBronze>);
list_ingots.addAll(<ore:ingotBrass>);
list_ingots.addAll(<ore:ingotNickel>);
list_ingots.addAll(<ore:ingotInvar>);
	
val ore_glass = <ore:blockGlass>;

recipes.addShaped("quartz_fiber", quartz_fiber * 3, [[ore_glass, ore_glass, ore_glass], [list_quartz_dust, list_quartz_dust, list_quartz_dust], [ore_glass, ore_glass, ore_glass]]);
recipes.addShapeless("glass_cable", glass_cable * 4, [quartz_fiber, list_crystal_fluix, list_crystal_fluix]);

for i in 0 to 16 {
	recipes.addShapeless("glass_cable_uncolour_" + i, glass_cable, [<appliedenergistics2:part>.withDamage(i), <minecraft:water_bucket>]);
}

recipes.addShapeless("cable_anchor_certus", cable_anchor * 3, [list_ingots, certus_knife.transformDamage()]);
recipes.addShapeless("cable_anchor_nether", cable_anchor * 3, [list_ingots, nether_knife.transformDamage()]);

recipes.addShapeless("covered_cable", fluix_covered_cable, [glass_cable, <ore:blockWool>]);

for i in 20 to 36 {
	recipes.addShapeless("covered_cable_uncolour_" + i, fluix_covered_cable, [<appliedenergistics2:part>.withDamage(i), <minecraft:water_bucket>]);
}

