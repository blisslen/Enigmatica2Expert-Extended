import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient;
import mods.ic2.ScrapBox;
#modloaded ic2


# Hydrated Coal Dust recipe consumes containers that can store 1000mB + liquid, this fixes that
	recipes.remove(<ic2:dust:3>);
	recipes.addShapeless("ic2_hydrated_coal_dust_liquid_fix", 
	<ic2:dust:3>, 
	[<ore:dustCoal>,<liquid:water> * 1000]);

# Removing IC2 coal coke
	recipes.remove(<ic2:coke>);
	
# Batch Crafter, unintended behaviour
	recipes.remove(<ic2:te:89>);

# Missing Dust Compression
	recipes.addShaped("LeadDustFromTiny", 
	<thermalfoundation:material:67>, 
	[[<ic2:dust:23>, <ic2:dust:23>, <ic2:dust:23>],
	[<ic2:dust:23>, <ic2:dust:23>, <ic2:dust:23>], 
	[<ic2:dust:23>, <ic2:dust:23>, <ic2:dust:23>]]);
	
	recipes.addShaped("LapisDustFromTiny", 
	<ic2:dust:9>, 
	[[<ic2:dust:22>, <ic2:dust:22>, <ic2:dust:22>],
	[<ic2:dust:22>, <ic2:dust:22>, <ic2:dust:22>], 
	[<ic2:dust:22>, <ic2:dust:22>, <ic2:dust:22>]]);

# Crushed Ore Smeltery compat
	mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 144, <jaopca:item_crushedaluminium>);
	mods.tconstruct.Melting.addRecipe(<liquid:ardite> * 144, <jaopca:item_crushedardite>);
	mods.tconstruct.Melting.addRecipe(<liquid:starmetal> * 144, <jaopca:item_crushedastralstarmetal>);
	mods.tconstruct.Melting.addRecipe(<liquid:boron> * 144, <jaopca:item_crushedboron>);
	mods.tconstruct.Melting.addRecipe(<liquid:cobalt> * 144, <jaopca:item_crushedcobalt>);
	mods.tconstruct.Melting.addRecipe(<liquid:draconium> * 144, <jaopca:item_crusheddraconium>);
	mods.tconstruct.Melting.addRecipe(<liquid:iridium> * 144, <jaopca:item_crushediridium>);
	mods.tconstruct.Melting.addRecipe(<liquid:lithium> * 144, <jaopca:item_crushedlithium>);
	mods.tconstruct.Melting.addRecipe(<liquid:magnesium> * 144, <jaopca:item_crushedmagnesium>);
	mods.tconstruct.Melting.addRecipe(<liquid:mithril> * 144, <jaopca:item_crushedmithril>);
	mods.tconstruct.Melting.addRecipe(<liquid:thorium> * 144, <jaopca:item_crushedthorium>);
	mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 144, <jaopca:item_crushedplatinum>);
	mods.tconstruct.Melting.addRecipe(<liquid:osmium> * 144, <jaopca:item_crushedosmium>);
	mods.tconstruct.Melting.addRecipe(<liquid:nickel> * 144, <jaopca:item_crushednickel>);
	mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 144, <jaopca:item_crushedtitanium>);
	mods.tconstruct.Melting.addRecipe(<liquid:copper> * 144, <ic2:crushed>);
	mods.tconstruct.Melting.addRecipe(<liquid:gold> * 144, <ic2:crushed:1>);
	mods.tconstruct.Melting.addRecipe(<liquid:iron> * 144, <ic2:crushed:2>);
	mods.tconstruct.Melting.addRecipe(<liquid:lead> * 144, <ic2:crushed:3>);
	mods.tconstruct.Melting.addRecipe(<liquid:silver> * 144, <ic2:crushed:4>);
	mods.tconstruct.Melting.addRecipe(<liquid:tin> * 144, <ic2:crushed:5>);
	mods.tconstruct.Melting.addRecipe(<liquid:uranium> * 144, <ic2:crushed:6>);

# Jetpacks	
	recipes.remove(<ic2:jetpack_electric>.anyDamage());
	recipes.remove(<ic2:jetpack:27>.anyDamage());

	recipes.addShapedMirrored("IC2 Electric Jetpack", 
	<ic2:jetpack_electric>, 
	[[<ic2:casing:5>, <minecraft:elytra>.anyDamage(), <ic2:casing:5>],
	[<ore:circuitAdvanced>, <ic2:batpack>.anyDamage(), <ore:circuitAdvanced>], 
	[<ic2:casing:5>, null, <ic2:casing:5>]]);
	
	recipes.addShapedMirrored("IC2 Jetpack", 
	<ic2:jetpack:27>, 
	[[<ic2:casing:5>, <minecraft:elytra>.anyDamage(), <ic2:casing:5>],
	[<ore:circuitAdvanced>, <ic2:te:29>, <ore:circuitAdvanced>], 
	[<ic2:casing:5>, null, <ic2:casing:5>]]);

# Hazmat/Rubber Armor
	recipes.addShaped("Hazmat ", <ic2:hazmat_helmet>, 
	[[<ore:dyeOrange>, <ore:dyeOrange>, <ore:dyeOrange>],
	[<ore:itemRubber>, <ore:blockGlass>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:barsIron>, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Chest", <ic2:hazmat_chestplate>, 
	[[<ore:itemRubber>, null, <ore:itemRubber>],
	[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Leggings", <ic2:hazmat_leggings>,
	 [[<ore:itemRubber>, <ore:dyeOrange>, <ore:itemRubber>],
	 [<ore:itemRubber>, null, <ore:itemRubber>],
	  [<ore:itemRubber>, null, <ore:itemRubber>]]);

	recipes.addShaped("Hazmat Boots", <ic2:rubber_boots>, 
	[[<ore:itemRubber>, null, <ore:itemRubber>],
	[<ore:itemRubber>, null, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:dyeBlack>, <ore:itemRubber>]]);


# Clay Dust 
	recipes.addShapeless("Clay Dust", 
	<ic2:dust:1>, [<minecraft:clay>, <ore:craftingToolForgeHammer>]);

# Bronze
	recipes.remove(<ic2:resource:5>);
	recipes.remove(<ic2:ingot:1>);
	
# Batch Crafter
	recipes.remove(<ic2:te:89>);
	recipes.addShaped("Batch Crafter", <ic2:te:89>, 
	[[null, <ic2:te:88>, null],
	[<ore:circuitAdvanced>, <ic2:resource:13>, <ore:circuitAdvanced>], 
	[<ore:craftingToolForgeHammer>, <thermalfoundation:wrench>.anyDamage(), <ore:craftingToolForgeHammer>]]);

# Jetpack Attachment Plate, recipe needs oredict
	recipes.remove(<ic2:crafting:37>);
	recipes.addShapedMirrored("Jetpack Attachment Plate", 
	<ic2:crafting:37>, 
	[[<ore:nuggetIridium>, <ic2:crafting:3>, <ore:nuggetIridium>],
	[<ic2:crafting:15>, <ore:plateSteel>, <ic2:crafting:15>], 
	[<ore:nuggetIridium>, <ic2:crafting:3>, <ore:nuggetIridium>]]);
	
#  Overclocker Upgrade
	recipes.remove(<ic2:upgrade>);
	mods.forestry.Carpenter.addRecipe(<ic2:upgrade> * 2, 
	[[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>],
	[<ic2:cable>, <ore:circuitBasic>, <ic2:cable>],
	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]], 40, <liquid:ic2coolant> * 3000);

# Iridium Reinforced Plate, recipe needs oredict
	recipes.remove(<ic2:crafting:4>);
	recipes.addShapedMirrored("Iridium Reinforced Plate", 
	<ic2:crafting:4>, 
	[[<ore:ingotIridium>, <ic2:crafting:3>, <ore:ingotIridium>],
	[<ic2:crafting:3>, <ore:gemDiamond>, <ic2:crafting:3>], 
	[<ore:ingotIridium>, <ic2:crafting:3>, <ore:ingotIridium>]]);

# Reactor Chamber
	recipes.remove(<ic2:te:24>);
	recipes.addShaped("IC2 Reactor Chamber", 
	<ic2:te:24> * 2, 
	[[null, <ore:plateDenseLead>, null],
	[<ore:plateDenseLead>, <ic2:resource:12>, <ore:plateDenseLead>], 
	[null, <ore:plateDenseLead>, null]]);

# Basic Machine Casing
	recipes.remove(<ic2:resource:12>);
	recipes.addShapedMirrored("Basic Machine Casing1", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminum>, <tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateAluminum>],
	[<tconstruct:large_plate>.withTag({Material: "iron"}), null, <tconstruct:large_plate>.withTag({Material: "iron"})], 
	[<ore:plateAluminum>, <tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateAluminum>]]);
	
	recipes.addShapedMirrored("Basic Machine Casing2", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminium>, <ore:plateDenseIron>, <ore:plateAluminium>],
	[<ore:plateDenseIron>, null, <ore:plateDenseIron>], 
	[<ore:plateAluminium>, <ore:plateDenseIron>, <ore:plateAluminium>]]);
	
	recipes.addShapedMirrored("Basic Machine Casing3", 
	<ic2:resource:12> * 4, 
	[[<ore:plateAluminium>, <ore:plateDenseTin>, <ore:plateAluminium>],
	[<ore:plateDenseTin>, null, <ore:plateDenseTin>], 
	[<ore:plateAluminium>, <ore:plateDenseTin>, <ore:plateAluminium>]]);

# Reinforced Stone
	recipes.addShapedMirrored("Reinforced Stone", 
	<ic2:resource:11> * 16, 
	[[<minecraft:stone:*>, <tconstruct:soil>, <minecraft:stone:*>],
	[<tconstruct:soil>, <ore:dustClay>, <tconstruct:soil>], 
	[<minecraft:stone:*>, <tconstruct:soil>, <minecraft:stone:*>]]);
	
# MFE -> MFSU Upgrade Kit removal
	rh(<ic2:upgrade_kit>);
	
# Industrial Diamond (Replaced with regular diamond)
	rh(<ic2:crafting:19>);
	
# Iridium TiC Compat
	mods.tconstruct.Melting.addRecipe(<liquid:iridium> * 144, <ic2:misc_resource:1>, 500);
	mods.tconstruct.Melting.addRecipe(<liquid:iridium> * 16, <ic2:misc_resource:2>, 200);

# Lapis Dust
	recipes.remove(<ic2:dust:9>);

# Diamond Dust
	recipes.remove(<ic2:dust:5>);
	
# IC2 Block Cutting blades
remakeEnvelop(<ic2:block_cutting_blade>,   <ore:stone>,        <tconstruct:large_sword_blade>.withTag({Material: "iron"}));
remakeEnvelop(<ic2:block_cutting_blade:1>, <ore:blockIron>,    <tconstruct:large_sword_blade>.withTag({Material: "steel"}));
remakeEnvelop(<ic2:block_cutting_blade:2>, <ore:blockDiamond>, <tconstruct:large_sword_blade>.withTag({Material: "alumite"}));

# New Scraps
ScrapBox.addDrop(<forestry:chipsets>.withTag({T: 0 as short}), 0.1F);
ScrapBox.addDrop(<forestry:chipsets:1>.withTag({T: 1 as short}), 0.06F);
ScrapBox.addDrop(<forestry:chipsets:2>.withTag({T: 2 as short}), 0.04F);
ScrapBox.addDrop(<forestry:chipsets:3>.withTag({T: 3 as short}), 0.01F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:1>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:2>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:3>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:4>, 0.1F);
ScrapBox.addDrop(<actuallyadditions:item_crystal_shard:5>, 0.1F);
ScrapBox.addDrop(<extrautils2:klein>, 0.1F);
ScrapBox.addDrop(<extrautils2:decorativesolid:3>, 0.4F);
ScrapBox.addDrop(<extrautils2:decorativesolid:7>, 0.4F);
ScrapBox.addDrop(<industrialforegoing:pink_slime>, 0.3F);
ScrapBox.addDrop(<industrialforegoing:plastic>, 1.1F);
ScrapBox.addDrop(<nuclearcraft:upgrade>, 0.9F);
ScrapBox.addDrop(<nuclearcraft:upgrade:1>, 0.9F);
ScrapBox.addDrop(<appliedenergistics2:fluix_block>, 0.2F);
ScrapBox.addDrop(<appliedenergistics2:material:6>, 4.0F);
ScrapBox.addDrop(<appliedenergistics2:material:52>, 0.6F);
ScrapBox.addDrop(<immersiveengineering:stone_decoration:8>, 0.4F);
ScrapBox.addDrop(<immersiveengineering:material:5>, 0.6F);
ScrapBox.addDrop(<immersiveengineering:material:26>, 0.1F);
ScrapBox.addDrop(<mekanism:mufflingupgrade>, 1.5F);
ScrapBox.addDrop(<mekanism:substrate>, 2.4F);
ScrapBox.addDrop(<mekanism:polyethene:2>, 0.9F);
ScrapBox.addDrop(<mekanismgenerators:hohlraum>, 2.1F);
ScrapBox.addDrop(<thermalfoundation:diagram_redprint>, 3.1F);
ScrapBox.addDrop(<thermalfoundation:material:864>, 2.8F);
ScrapBox.addDrop(<thermalexpansion:frame:64>, 0.05F);
ScrapBox.addDrop(<psi:cad_colorizer_:17>, 0.1F);
ScrapBox.addDrop(<rftools:syringe>, 1.7F);
ScrapBox.addDrop(<rftools:shape_card>, 0.3F);
ScrapBox.addDrop(<rftoolsdim:dimlet_parcel>, 0.03F);