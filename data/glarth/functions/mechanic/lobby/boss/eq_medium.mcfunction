# Armor
item replace entity @a[scores={playerid=1..}] armor.head with minecraft:iron_helmet
item replace entity @a[scores={playerid=1..}] armor.chest with minecraft:leather_chestplate
item replace entity @a[scores={playerid=1..}] armor.legs with minecraft:leather_leggings
item replace entity @a[scores={playerid=1..}] armor.feet with minecraft:iron_boots

# Melee
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:iron_sword[damage=240]
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:iron_sword
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:diamond_sword[damage=1550]
give @a[scores={playerid=1..}] minecraft:stone_sword
give @a[scores={playerid=1..}] minecraft:wooden_sword
give @a[scores={playerid=1..}] minecraft:stone_pickaxe

# Ranged
loot give @a[scores={playerid=1..}] loot glarth:give/bows/bow
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:arrow 15
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:arrow 35

# Staff
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/drowned",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/zombie",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/pigman",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/skeleton",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/illusioner",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/spider",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
loot give @a[scores={playerid=1..}] loot glarth:give/staff/bee

# Throwable
give @a[scores={playerid=1..}] ink_sac 5
give @a[scores={playerid=1..}] magma_cream 5
give @a[scores={playerid=1..}] minecraft:snowball 1

# Potion
loot give @a[scores={playerid=1..}] loot glarth:give/potions/leaping
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
execute if score bossRe Stats matches 9.. run loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/strong_healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/fire_resistance
loot give @a[scores={playerid=1..}] loot glarth:give/potions/milk_bottle
loot give @a[scores={playerid=1..}] loot glarth:give/potions/water

# Pouch
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 2
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 15
give @a[scores={playerid=1..}] minecraft:apple 5
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:golden_apple 2
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:golden_apple 3
give @a[scores={playerid=1..}] minecraft:cooked_beef 3
give @a[scores={playerid=1..}] minecraft:rotten_flesh 5
give @a[scores={playerid=1..}] minecraft:spider_eye 5