# Armor
item replace entity @a[scores={playerid=1..}] armor.chest with minecraft:iron_chestplate
item replace entity @a[scores={playerid=1..}] armor.legs with minecraft:iron_leggings
item replace entity @a[scores={playerid=1..}] armor.feet with minecraft:golden_boots

item replace entity @s armor.head with minecraft:totem_of_undying

# Break Free
give @a[scores={playerid=1..}] minecraft:shears
give @a[scores={playerid=1..}] minecraft:torch 2
give @a[scores={playerid=1..}] minecraft:gray_dye 3

# melee
give @a[scores={playerid=1..}] minecraft:golden_sword
give @a[scores={playerid=1..}] minecraft:diamond_sword
give @a[scores={playerid=1..}] minecraft:stone_pickaxe

# Ranged
loot give @a[scores={playerid=1..}] loot glarth:give/bows/crossbow
give @a[scores={playerid=1..}] minecraft:arrow 100

# Staff
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/drowned",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/zombie",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/pigman",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/skeleton",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/illusioner",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/spider",LootTableSeed:0} destroy
execute as @a[scores={playerid=1..}] run function glarth:combat/loot_table_give
loot give @a[scores={playerid=1..}] loot glarth:give/staff/bee
clear @a[scores={playerid=1..}] gold_ingot
clear @a[scores={playerid=1..}] potato
clear @a[scores={playerid=1..}] carrot
clear @a[scores={playerid=1..}] iron_ingot
clear @a[scores={playerid=1..}] brown_dye
clear @a[scores={playerid=1..}] bone
clear @a[scores={playerid=1..}] rotten_flesh
clear @a[scores={playerid=1..}] feather

# Throwable
give @a[scores={playerid=1..}] glow_ink_sac 1
give @a[scores={playerid=1..}] ink_sac 5
give @a[scores={playerid=1..}] magma_cream 5
give @a[scores={playerid=1..}] minecraft:snowball 5
give @a[scores={playerid=1..}] minecraft:spider_eye 5
loot give @a[scores={playerid=1..}] loot glarth:give/beehive
loot give @a[scores={playerid=1..}] loot glarth:give/beehive
loot give @a[scores={playerid=1..}] loot glarth:give/tophat

# Potion
loot give @a[scores={playerid=1..}] loot glarth:give/potions/swiftness
loot give @a[scores={playerid=1..}] loot glarth:give/potions/leaping
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/strong_healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/fire_resistance
loot give @a[scores={playerid=1..}] loot glarth:give/potions/milk_bottle
loot give @a[scores={playerid=1..}] loot glarth:give/potions/water

# Pouch
give @a[scores={playerid=1..}] minecraft:cooked_beef 10
give @a[scores={playerid=1..}] minecraft:pumpkin_pie 7
give @a[scores={playerid=1..}] minecraft:apple 20
give @a[scores={playerid=1..}] minecraft:golden_apple 7