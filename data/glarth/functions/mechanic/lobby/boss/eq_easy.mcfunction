# Melee
give @a[scores={playerid=1..}] minecraft:golden_sword
give @a[scores={playerid=1..}] minecraft:iron_sword
give @a[scores={playerid=1..}] minecraft:diamond_pickaxe

# Break Free
give @a[scores={playerid=1..}] minecraft:shears

# Ranged
loot give @a[scores={playerid=1..}] loot glarth:give/bows/crossbow
execute unless score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:arrow 30
execute if score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:arrow 128

# Staff
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/stray",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/creeper",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/charged_creeper",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/wither_skeleton",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/summoner",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand
loot give @a[scores={playerid=1..}] loot glarth:give/staff/angry_bee
loot give @a[scores={playerid=1..}] loot glarth:give/staff/chaos
clear @a[scores={playerid=1..}] gunpowder
clear @a[scores={playerid=1..}] sand
clear @a[scores={playerid=1..}] bone
clear @a[scores={playerid=1..}] brown_dye
clear @a[scores={playerid=1..}] bow
execute if score bossRe Stats matches 9 run clear @s rotten_flesh

# Ranged 2
loot give @a[scores={playerid=1..}] loot glarth:give/bows/bow

# Throwable
loot give @a[scores={playerid=1..}] loot glarth:give/tophat
give @a[scores={playerid=1..}] ink_sac 10
give @a[scores={playerid=1..}] magma_cream 10
give @a[scores={playerid=1..}] minecraft:snowball 2

# Potion
loot give @a[scores={playerid=1..}] loot glarth:give/potions/swiftness
loot give @a[scores={playerid=1..}] loot glarth:give/potions/leaping
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/strong_healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/strong_healing
loot give @a[scores={playerid=1..}] loot glarth:give/potions/fire_resistance
loot give @a[scores={playerid=1..}] loot glarth:give/potions/milk_bottle
loot give @a[scores={playerid=1..}] loot glarth:give/potions/milk_bottle
loot give @a[scores={playerid=1..}] loot glarth:give/potions/milk_bottle
loot give @a[scores={playerid=1..}] loot glarth:give/potions/water
loot give @a[scores={playerid=1..}] loot glarth:give/potions/water

# Pouch
execute unless score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 20
execute if score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 50
give @a[scores={playerid=1..}] minecraft:apple 50
execute unless score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:golden_apple 5
execute if score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:golden_apple 10
give @a[scores={playerid=1..}] minecraft:cooked_beef 5
execute unless score bossRe Stats matches 9 run give @a[scores={playerid=1..}] minecraft:rotten_flesh 5

# Armor
item replace entity @a[scores={playerid=1..}] armor.head with minecraft:diamond_helmet
item replace entity @a[scores={playerid=1..}] armor.chest with minecraft:iron_chestplate
item replace entity @a[scores={playerid=1..}] armor.legs with minecraft:iron_leggings
item replace entity @a[scores={playerid=1..}] armor.feet with minecraft:diamond_boots
