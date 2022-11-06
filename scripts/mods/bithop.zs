# [BitHop] from [Cabinet][+1]
craft.remake(<bithop:bithop>, ["pretty",
  "A C A",
  "  A  "], {
  "A": <ore:stoneAndesite>, # Andesite
  "C": <rustic:cabinet>, # Cabinet
});

# [PullHop] from [Cabinet][+1]
craft.remake(<bithop:pullhop>, ["pretty",
  "A   A",
  "A C A",
  "  A  "], {
  "A": <ore:stoneAndesite>, # Andesite
  "C": <rustic:cabinet>, # Cabinet
});

# [ScrewHop] from [Cabinet][+1]
craft.remake(<bithop:screwhop>, ["pretty",
  "    A",
  "A A  ",
  "C A  "], {
  "A": <ore:stoneAndesite>, # Andesite
  "C": <rustic:cabinet>, # Cabinet
});

# [FluxHop] from [Cabinet][+2]
craft.remake(<bithop:fluxhop>, ["pretty",
  "⌂ ♥ ⌂",
  "⌂ C ⌂",
  "♥ ⌂ ♥"], {
  "⌂": <ic2:casing:3>,     # Iron Item Casing
  "♥": <ore:dustRedstone>, # Redstone
  "C": <rustic:cabinet>,   # Cabinet
});

# [Hopper] from [PullHop][+2]
craft.make(<minecraft:hopper>, ["pretty",
  "□ B □",
  "□ P □",
  "  □  "], {
  "□": <ore:plateIron>,  # Iron Plate
  "B": <bithop:bithop>,  # BitHop
  "P": <bithop:pullhop>, # PullHop
});

# [Hopper] from [PullHop][+2]
craft.make(<minecraft:hopper>, ["pretty",
  "□ B □",
  "□ P □",
  "  □  "], {
  "□": <ore:plateAluminium>, # Aluminum Plate
  "B": <bithop:bithop>,      # BitHop
  "P": <bithop:pullhop>,     # PullHop
});