#give function:
#function glarth:items/util/give {item:"..1"} 

## initialize all items
# trades
function glarth:items/init/trades

# ground items
data modify storage glarth:items ground.diamond set value {1:{id:"minecraft:diamond"}}
data modify storage glarth:items ground.letter set value {1:{table:"glarth:give/letter"},2:{table:"glarth:give/letter"}}
data modify storage glarth:items ground.cave set value {1:{id:"minecraft:flint"},2:{id:"minecraft:coal"}}
data modify storage glarth:items ground.bricks set value {1:{table:"glarth:give/tools/brick"},2:{table:"glarth:give/tools/brick"}}
data modify storage glarth:items ground.mushrooms set value {1:{id:"minecraft:brown_mushroom"},2:{id:"minecraft:brown_mushroom"}}
data modify storage glarth:items ground.saddle set value {1:{id:"minecraft:saddle"}}

# misc items
# special combat loot - reignford book
data modify storage glarth:items misc.reignford set value {1:{table:"glarth:give/books/reignford"}}
# combat start free items
data modify storage glarth:items misc.combat set value {1:{id:"minecraft:arrow",count:5,all:true},2:{id:"minecraft:egg",count:7,all:true}}


### -=- STATIC -=-
# static items [excluded from randomization]
# richard: these items are only dropped after they have been given to richard so the same item should be given back
data modify storage glarth:items static.richard set value {1:{id:"minecraft:diamond"},2:{table:"glarth:give/keys/default"}}
# farmer: same as richard
data modify storage glarth:items static.farmer set value {1:{table:"glarth:give/tools/diamond_hoe"}}
# tutorial pickaxe: really should not be randomized
data modify storage glarth:items static.tutorial set value {1:{id:"minecraft:stone_pickaxe"},2:{table:"glarth:give/staff/old"}}
# special magic sword
data modify storage glarth:items static.grimsbane set value {1:{table:"glarth:give/weapons/magic_sword",all:true}}
# special necromancer shears
data modify storage glarth:items static.necromancer set value {1:{id:"minecraft:shears",all:true}}
# archaeologist return diamond pickaxe
data modify storage glarth:items static.archaeologist set value {1:{table:"glarth:give/tools/diamond_pickaxe"}}
# recipes
data modify storage glarth:items static.recipes set value {1:{table:"glarth:give/bows/crossbow"},2:{id:"minecraft:brown_dye"}}

#give function:
#function glarth:items/util/give {item:"..1"} 