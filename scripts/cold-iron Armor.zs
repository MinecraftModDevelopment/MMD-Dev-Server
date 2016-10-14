#Name: cold-rion Armor.zs
#Author: Morpheus1101

print("Initializing 'cold-iron Armor.zs'...");

recipes.addShaped(<basemetals:coldiron_helmet>, [[<basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>,  null, <basemetals:coldiron_ingot>], [null, null, null]]);

recipes.addShaped(<basemetals:coldiron_chestplate>, [[<basemetals:coldiron_ingot>, null, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>,  <basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>]]);

recipes.addShaped(<basemetals:coldiron_leggings>, [[<basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>,  null, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>, null, <basemetals:coldiron_ingot>]]);

recipes.addShaped(<basemetals:coldiron_boots>, [[null, null, null], [<basemetals:coldiron_ingot>,  null, <basemetals:coldiron_ingot>], [<basemetals:coldiron_ingot>, null, <basemetals:coldiron_ingot>]]);

print("Finished Initializing 'cold-iron Armor.zs'");