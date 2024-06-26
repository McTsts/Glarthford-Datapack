#give function:
#function glarth:items/util/give {item:"..1"} 

## initialize all items
# trades
function glarth:items/init/trades
# ground items
function glarth:items/init/ground


# misc items
# special combat loot - reignford book
data modify storage glarth:items misc.reignford set value {1:{table:"glarth:give/books/reignford"}}
# combat start free items
data modify storage glarth:items misc.combat set value {1:{id:"minecraft:arrow",count:5,all:true},2:{id:"minecraft:egg",count:7,all:true}}
# mayor tophat
data modify storage glarth:items misc.mayor set value {1:{table:"glarth:give/tophat"}}
# cow milking
data modify storage glarth:items misc.cow_milk set value {1:{table:"glarth:give/potions/milk_bottle"}}


# chest test
data modify storage glarth:items chests.test set value {slot_1:{id:"minecraft:arrow"},slot_2:{id:"minecraft:apple",count:2},slot_3:{id:"minecraft:stick",all:true},slot_4:{id:"minecraft:apple",all:true,count:3},slot_10:{table:"glarth:give/potions/milk_bottle"},slot_11:{table:"glarth:give/potions/milk_bottle",count:2},slot_12:{table:"glarth:give/potions/milk_bottle",all:true},slot_13:{table:"glarth:give/potions/milk_bottle",all:true,count:3},slot_19:{function:"glarth:items/give/shield"}}


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