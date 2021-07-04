import crafttweaker.item.IItemStack as IItemStack;
#modloaded advancedrocketry

# Rename basalt as it not oredicted and have different uses
<advancedrocketry:basalt>.displayName = game.localize("e2ee.tile.basalt_sediment");

# Vulpes Library Silicon dust Manufactory* Recipe Removal (Credit TheShadoWZYE2)
	mods.nuclearcraft.manufactory.removeRecipeWithOutput(<libvulpes:productdust:3>);
	
# Airtight Seal Enchant
	recipes.addShapedMirrored("Airtight Seal Enchant", 
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: (<enchantment:advancedrocketry:spacebreathing>.id) as short}]}), 
	[[<ore:plateTitaniumAluminide>, <advancedrocketry:liquidtank>, <ore:plateTitaniumAluminide>],
	[<ore:ingotCarbon>, <advancedrocketry:blocklens>, <ore:ingotCarbon>], 
	[<ore:plateTitaniumAluminide>, <advancedrocketry:liquidtank>, <ore:plateTitaniumAluminide>]]);

# Rocket Fuel
	scripts.wrap.immersiveengineering.Mixer.addRecipe(<liquid:rocketfuel> * 250, <liquid:oxygen> * 500, [<thermalfoundation:material:833>, <ore:bitumen>], 25000);

# HeatProof Brick
	recipes.remove(<advancedrocketry:blastbrick>);
	recipes.addShaped("HeatProof Brick", 
	<advancedrocketry:blastbrick> * 6, 
	[[<minecraft:brick_block>, <immersiveengineering:stone_decoration:2>, <minecraft:brick_block>],
	[<minecraft:brick_block>, <ore:slimecrystalMagma>, <minecraft:brick_block>], 
	[<minecraft:brick_block>, <minecraft:nether_brick>, <minecraft:brick_block>]]);

# Elite Motor
	recipes.remove(<libvulpes:elitemotor>);
	recipes.addShapedMirrored("Elite Motor", 
	<libvulpes:elitemotor>, 
	[[<ore:gemDilithium>, <ore:coilTitanium>, <ore:plateIridium>],
	[<ore:gemDilithium>, <ore:gearDiamond>, <ore:plateIridium>], 
	[<ore:gemDilithium>, <ore:coilTitanium>, <ore:plateIridium>]]);

# Machine Structure
	recipes.remove(<libvulpes:structuremachine>);
	recipes.addShapedMirrored("Lib Vulpes Machine Structure", 
	<libvulpes:structuremachine> * 6, 
	[[<ic2:crafting:29>, <ore:plateElite>, <ic2:crafting:29>],
	[<ore:plateElite>, <thermalexpansion:frame:147>, <ore:plateElite>], 
	[<ic2:crafting:29>, <ore:plateElite>, <ic2:crafting:29>]]);

# Liquid IO Circuit Board
	recipes.remove(<advancedrocketry:ic:5>);
	recipes.addShapedMirrored("Liquid IO Circuit Board", 
	<advancedrocketry:ic:5>, 
	[[<appliedenergistics2:material:54>, <forestry:chipsets:2>.withTag({T:2 as short},false), <appliedenergistics2:material:54>],
	[<appliedenergistics2:material:54>, <immersiveengineering:material:27>, <appliedenergistics2:material:54>], 
	[<appliedenergistics2:material:54>, <forestry:chipsets:2>.withTag({T:2 as short},false), <appliedenergistics2:material:54>]]);

# Item IO Circuit Board
	recipes.remove(<advancedrocketry:ic:4>);
	recipes.addShapedMirrored("Item IO Circuit Board", 
	<advancedrocketry:ic:4>, 
	[[<appliedenergistics2:material:18>, <forestry:chipsets:1>.withTag({T:1 as short},false), <appliedenergistics2:material:18>],
	[<appliedenergistics2:material:18>, <immersiveengineering:material:27>, <appliedenergistics2:material:18>], 
	[<appliedenergistics2:material:18>, <forestry:chipsets:1>.withTag({T:1 as short},false), <appliedenergistics2:material:18>]]);

# Control Circuit Board
	recipes.remove(<advancedrocketry:ic:3>);
	recipes.addShapedMirrored("Control Circuit Board", 
	<advancedrocketry:ic:3>, 
	[[<ore:circuitElite>, <immersiveengineering:metal_decoration0>, <ore:circuitElite>],
	[<ore:bioplastic>, <immersiveengineering:material:27>, <ore:bioplastic>], 
	[<ore:circuitElite>, <immersiveengineering:metal_decoration0>, <ore:circuitElite>]]);
	

# *======= Remove & Hide =======*

	val removals = [
	<libvulpes:productdust:1>,
	<libvulpes:productdust:2>,
	<libvulpes:productdust:3>,
	<libvulpes:productdust:4>,
	<libvulpes:productdust:5>,
	<libvulpes:productdust:6>,
	<libvulpes:productdust:9>,
	<libvulpes:productdust:10>,
	<libvulpes:productingot:4>,
	<libvulpes:productingot:5>,
	<libvulpes:productingot:6>,
	<libvulpes:productingot:9>,
	<libvulpes:productingot:10>,
	<libvulpes:productnugget:4>,
	<libvulpes:productnugget:5>,
	<libvulpes:productnugget:6>,
	<libvulpes:productnugget:9>,
	<libvulpes:productnugget:10>,
	<libvulpes:ore0:4>,
	<libvulpes:ore0:5>,
	<libvulpes:ore0:9>,
	<libvulpes:ore0:10>,
	<libvulpes:productrod:1>,
	<libvulpes:productrod:6>

	] as IItemStack[];
	
	for item in removals {
		utils.rh(item);
	}
	
	val recipesToRemove = [
	
	<advancedrocketry:productrod>,
	<advancedrocketry:productrod:1>,
	<libvulpes:productrod:4>,
	<libvulpes:productrod:7>,
	<libvulpes:productrod:10>,
	<immersiveengineering:material:3>,
	<advancedrocketry:productgear:*>,
	<libvulpes:productgear:*>
	
	] as IItemStack[];

	for item in recipesToRemove {
		recipes.remove(item);
	}

	<ore:stickIron>.remove(<advancedrocketry:productrod:1>);


# [Pressurized Tank] from [Omnivoir][+2]
craft.remake(<advancedrocketry:liquidtank>, ["pretty",
  "T ■ T",
  "T O T",
  "T ■ T"], {
  "■": <ore:blockDilithium>,           # Block of Dilithium
  "T": <ore:sheetTitaniumIridium>,     # Titanium Iridium Alloy Sheet
  "O": <enderio:block_omni_reservoir>, # Omnivoir
});
recipes.addShapeless("Clearing AdvRock Tank", <advancedrocketry:liquidtank>, [<advancedrocketry:liquidtank>]);

# Mushrooms as energy providers
mods.thermalexpansion.EnervationDynamo.addFuel(<advancedrocketry:electricmushroom>, 90000000);

# Crystalls recycling
val CLN = <ore:nuggetCrystaltine>.firstItem;
val crtlExcps = "except: manufactory Macerator ThermalCentrifuge mekCrusher";
scripts.process.crush(<advancedrocketry:crystal:3>, <jaopca:item_crystalardite>,  crtlExcps, [<actuallyadditions:item_crystal_empowered>,   <environmentaltech:kyronite_crystal>, CLN], [0.6f, 0.3f, 0.05f]);
scripts.process.crush(<advancedrocketry:crystal:1>, <jaopca:item_crystalcobalt>,  crtlExcps, [<actuallyadditions:item_crystal_empowered:1>, <environmentaltech:pladium_crystal>,  CLN], [0.6f, 0.3f, 0.05f]);
scripts.process.crush(<advancedrocketry:crystal>,   <jaopca:item_crystalplatinum>,crtlExcps, [<actuallyadditions:item_crystal_empowered:2>, <environmentaltech:ionite_crystal>,   CLN], [0.6f, 0.3f, 0.05f]);
scripts.process.crush(<advancedrocketry:crystal:5>, <jaopca:item_crystalthorium>, crtlExcps, [<actuallyadditions:item_crystal_empowered:3>, <environmentaltech:aethium_crystal>,  CLN], [0.6f, 0.3f, 0.05f]);
scripts.process.crush(<advancedrocketry:crystal:2>, <jaopca:item_crystaluranium>, crtlExcps, [<actuallyadditions:item_crystal_empowered:4>, <environmentaltech:litherite_crystal>,CLN], [0.6f, 0.3f, 0.05f]);
scripts.process.crush(<advancedrocketry:crystal:4>, <jaopca:item_crystaliridium>, crtlExcps, [<actuallyadditions:item_crystal_empowered:5>, <environmentaltech:erodium_crystal>,  CLN], [0.6f, 0.3f, 0.05f]);

# Special case for thermal centrifuge - it have no chances for secondary outputs
val ic2Cent = ["ThermalCentrifuge"] as string[];
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal:3> * 4] , null , [<jaopca:item_crystalardite>  * 3 , <actuallyadditions:item_crystal_empowered>  * 2 , <environmentaltech:kyronite_crystal> ] , null , null , null);
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal:1> * 4] , null , [<jaopca:item_crystalcobalt>  * 3 , <actuallyadditions:item_crystal_empowered:1>* 2 , <environmentaltech:pladium_crystal>  ] , null , null , null);
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal>   * 4] , null , [<jaopca:item_crystalplatinum>* 3 , <actuallyadditions:item_crystal_empowered:2>* 2 , <environmentaltech:ionite_crystal>   ] , null , null , null);
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal:5> * 4] , null , [<jaopca:item_crystalthorium> * 3 , <actuallyadditions:item_crystal_empowered:3>* 2 , <environmentaltech:aethium_crystal>  ] , null , null , null);
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal:2> * 4] , null , [<jaopca:item_crystaluranium> * 3 , <actuallyadditions:item_crystal_empowered:4>* 2 , <environmentaltech:litherite_crystal>] , null , null , null);
scripts.process.work(ic2Cent, null , [<advancedrocketry:crystal:4> * 4] , null , [<jaopca:item_crystaliridium> * 3 , <actuallyadditions:item_crystal_empowered:5>* 2 , <environmentaltech:erodium_crystal>  ] , null , null , null);

scripts.process.compress(<ore:blockCharcoal>, <advancedrocketry:misc:1>, "No Exceptions");

# Generator was too cheap compared to other coal gens
# [Coal Generator] from [Furnace][+2]
craft.remake(<libvulpes:coalgenerator>, [
  "B",
  "F",
  "□"], {
  "□": <ore:plateTitanium>, # Titanium Plate
  "B": <ore:itemBattery>,   # Small Battery
  "F": <minecraft:furnace>, # Furnace
});

# [Advanced Machine Structure*4] from [Silicon Boule][+2]
recipes.remove(<libvulpes:advstructuremachine>);
scripts.processUtils.avdRockXmlRecipe("PrecisionAssembler",	[
	<libvulpes:structuremachine> * 4, # Machine Structure
	<ore:sheetTitanium> * 4,
	<ore:gemDilithium> * 2,
	<ore:bouleSilicon>,          
], null,
	[<libvulpes:advstructuremachine> * 4], null
);

# Press recipe instead crafting table
recipes.remove(<advancedrocketry:misc>);
scripts.wrap.immersiveengineering.MetalPress.addRecipe(<advancedrocketry:misc>, <ore:oc:screen3>, <immersiveengineering:mold:0>, 2000);

# Advanced Alloys
scripts.process.alloy([<ore:ingotElectricalSteel> * 2, <ore:ingotPlatinum>, <actuallyadditions:item_crystal_empowered:1>], <ore:ingotModularium>.firstItem * 2,        "only: AdvRockArc");
scripts.process.alloy([<ore:ingotRefinedObsidian>, <ore:ingotOsmium>, <ore:ingotRefinedGlowstone>                       ], <ore:ingotOsgloglas>.firstItem * 2,         "only: AdvRockArc");
scripts.process.alloy([<ore:ingotManasteel>, <ore:ingotElvenElementium>, <ore:ingotTerrasteel>, <ore:blockGlass> * 10   ], <ore:ingotMirion>.firstItem * 6,            "only: AdvRockArc");
scripts.process.alloy([<ore:ingotIridium>, <ore:ingotOsmium>                                                            ], <ore:ingotOsmiridium>.firstItem * 4,        "only: AdvRockArc");
scripts.process.alloy([<ore:blockDiamond>, <ore:blockRedstone> * 5                                                      ], <ore:blockCrystalFlux>.firstItem,           "only: AdvRockArc");
scripts.process.alloy([<ore:ingotMagnesium> * 3, <ore:ingotBoron> * 6                                                   ], <ore:ingotMagnesiumDiboride>.firstItem * 9, "only: AdvRockArc");

# [Space Suit Helmet] from [Glass][+3]
recipes.removeShaped(<advancedrocketry:spacehelmet>);
craft.make(<advancedrocketry:spacehelmet>, ["pretty",
  "□ ╱ □",
  "╱ ■ ╱",
  "w w w"], {
  "■": <ore:blockGlass>, # Glass
  "╱": <ore:stickTitanium>, # Titanium Rod
  "□": <ore:plateTitanium>, # Titanium Plate
  "w": <ore:woolPrime>, # Wool (Merino, White)
});

# [Space Suit Chest-Piece] from [Titanium Plate][+3]
recipes.removeShaped(<advancedrocketry:spacechestplate>);
craft.make(<advancedrocketry:spacechestplate>, ["pretty",
  "w ╱ w",
  "w □ w",
  "w S w"], {
  "□": <ore:plateTitanium>, # Titanium Plate
  "╱": <ore:stickTitanium>, # Titanium Rod
  "S": <ore:fanSteel>,      # Steel Fan
  "w": <ore:woolPrime>, # Wool (Merino, White)
});

# [Space Suit Leggings] from [Titanium Rod][+1]
recipes.removeShaped(<advancedrocketry:spaceleggings>);
craft.make(<advancedrocketry:spaceleggings>, ["pretty",
  "w ╱ w",
  "w   w",
  "w   w"], {
  "╱": <ore:stickTitanium>, # Titanium Rod
  "w": <ore:woolPrime>, # Wool (Merino, White)
});

# [Space Suit Boots] from [Titanium Rod][+2]
recipes.removeShaped(<advancedrocketry:spaceboots>);
craft.make(<advancedrocketry:spaceboots>, ["pretty",
  "  ╱  ",
  "w   w",
  "□   □"], {
  "□": <ore:plateTitanium>, # Titanium Plate
  "╱": <ore:stickTitanium>, # Titanium Rod
  "w": <ore:woolPrime>, # Wool (Merino, White)
});

# [Suit Workstation] from [Crafting Table][+3]
recipes.removeShaped(<advancedrocketry:suitworkstation>);
craft.make(<advancedrocketry:suitworkstation>, ["pretty",
  "* * *",
  "3 w 3",
  "■ ■ ■"], {
  "■": <ore:blockTitanium>, # Titanium Block
  "3": <opencomputers:print>, # 3D Print
  "w": <ore:workbench>, # Crafting Table
  "*": <ore:crystalEmeraldic>, # Emeradic Crystal
});

# [Low Pressure Tank] from [Titanium Plate][+2]
craft.make(<advancedrocketry:pressuretank>, ["pretty",
  "п ◘ п",
  "□ ◘ □",
  "□ ◘ □"], {
  "□": <ore:plateIron>,     # Iron Plate
  "◘": <ic2:fluid_cell>.withTag({Fluid: {FluidName: "steam", Amount: 1000}}), # Universal Fluid Cell
  "п": <ore:plateTitanium>, # Titanium Plate
});

# [Pressure Tank] from [Titanium Plate][+2]
craft.make(<advancedrocketry:pressuretank:1>, ["pretty",
  "п ◘ п",
  "□ ◘ □",
  "□ ◘ □"], {
  "□": <ore:plateSteel>,    # Steel Plate
  "◘": <ic2:fluid_cell>.withTag({Fluid: {FluidName: "ic2superheated_steam", Amount: 1000}}), # Universal Fluid Cell
  "п": <ore:plateTitanium>, # Titanium Plate
});

# [High Pressure Tank] from [Titanium Plate][+2]
craft.make(<advancedrocketry:pressuretank:2>, ["pretty",
  "п ◘ п",
  "□ ◘ □",
  "□ ◘ □"], {
  "□": <ore:plateAluminium>, # Aluminum Plate
  "◘": <ic2:fluid_cell>.withTag({Fluid: {FluidName: "high_pressure_steam", Amount: 1000}}), # Universal Fluid Cell
  "п": <ore:plateTitanium>,                        # Titanium Plate
});

# [Super High Pressure Tank] from [Titanium Plate][+2]
craft.make(<advancedrocketry:pressuretank:3>, ["pretty",
  "п ◘ п",
  "□ ◘ □",
  "□ ◘ □"], {
  "□": <ore:plateTitaniumIridium>, # Titanium Iridium Alloy Plate
  "◘": <ic2:fluid_cell>.withTag({Fluid: {FluidName: "preheated_water", Amount: 1000}}), # Universal Fluid Cell
  "п": <ore:plateTitanium>,        # Titanium Plate
});

# [Hover Upgrade] from [Control Circuit Board][+3]
craft.make(<advancedrocketry:itemupgrade>, ["pretty",
  "  o  ",
  "□ C □",
  "* * *"], {
  "□": <ore:plateTitanium>,        # Titanium Plate
  "C": <advancedrocketry:ic:3>,    # Control Circuit Board
  "*": <ore:crystalEmeraldic>,     # Emeradic Crystal
  "o": <advgenerators:controller>, # Control Circuit
});

# [Flight Speed Control Upgrade] from [Control Circuit Board][+3]
craft.make(<advancedrocketry:itemupgrade:1>, ["pretty",
  "  M  ",
  "□ C □",
  "* * *"], {
  "□": <ore:plateTitanium>,              # Titanium Plate
  "C": <advancedrocketry:ic:3>,          # Control Circuit Board
  "*": <ore:crystalEmeraldic>,           # Emeradic Crystal
  "M": <modularmachinery:blockcasing:5>, # Machine Circuitry
});

# [Bionic Leg Upgrade] from [Control Circuit][+2]
craft.make(<advancedrocketry:itemupgrade:2>, [
  "■",
  "C",
  "F"], {
  "■": <ore:blockMotor>,           # Motor
  "C": <advgenerators:controller>, # Control Circuit
  "F": <ore:foodFrograw>,          # Frog Leg
});

# [Padded Landing Boots] from [Control Circuit][+2]
craft.make(<advancedrocketry:itemupgrade:3>, [
  "RCw"], {
  "R": <ic2:rubber_boots>.anyDamage(), # Rubber Boots
  "C": <advgenerators:controller>,     # Control Circuit
  "w": <ore:woolPrime>, # Wool (Merino, White)
});

# [Anti-Fog Visor] from [Traveller's Goggles (Base)][+1]
craft.shapeless(<advancedrocketry:itemupgrade:4>, 
  "CT", {
  "C": <advgenerators:controller>,   # Control Circuit
  "T": <conarm:travel_goggles_base>, # Traveller's Goggles (Base)
});

# [Beacon Finder] from [Engineer's Goggles][+1]
craft.shapeless(<advancedrocketry:beaconfinder>, 
  "CE", {
  "C": <advgenerators:controller>,                # Control Circuit
  "E": <actuallyadditions:item_engineer_goggles>, # Engineer's Goggles
});

# [Jet Pack] from [Cobweb][+3]
craft.remake(<advancedrocketry:jetpack>, ["pretty",
  "L C L",
  "╱ C ╱",
  "▲   ▲"], {
  "╱": <ore:stickTitanium>,             # Titanium Rod
  "▲": <ore:dustPyrotheum>,             # Pyrotheum Dust
  "C": <minecraft:web>,                 # Cobweb
  "L": <advancedrocketry:pressuretank>, # Low Pressure Tank
});

# [Atmosphere Analyzer] from [User Interface][+1]
craft.shapeless(<advancedrocketry:atmanalyser>, 
  "BU", {
  "B": <ore:itemBattery>,       # Small Battery
  "U": <advancedrocketry:misc>, # User Interface
});

# Some Alts with advanced machines
scripts.processUtils.avdRockXmlRecipe("ChemicalReactor", [<ore:dustSulfur> * 60], [<fluid:oxygen> * 3000], null, [<fluid:sulfuric_acid> * 6000]);
scripts.processUtils.avdRockXmlRecipe("Crystallizer", [<ore:dustFluorite> * 6], [<fluid:sulfuric_acid> * 6000], [<nuclearcraft:compound> * 6], null);