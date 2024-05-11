# Melee
give @a[scores={playerid=1..}] minecraft:golden_sword
give @a[scores={playerid=1..}] minecraft:iron_sword
give @a[scores={playerid=1..}] minecraft:diamond_pickaxe

# Break Free
give @a[scores={playerid=1..}] minecraft:shears

# Ranged
give @a[scores={playerid=1..}] minecraft:crossbow[custom_data={bow:"crossbow"}] 1
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
execute as @a[scores={playerid=1..}] run function glarth:mechanic/staff/get_angry_bee
execute as @a[scores={playerid=1..}] run function glarth:mechanic/staff/get_chaos
clear @a[scores={playerid=1..}] gunpowder
clear @a[scores={playerid=1..}] sand
clear @a[scores={playerid=1..}] bone
clear @a[scores={playerid=1..}] brown_dye
clear @a[scores={playerid=1..}] bow
execute if score bossRe Stats matches 9 run clear @s rotten_flesh

# Ranged 2
give @a[scores={playerid=1..}] minecraft:bow[custom_data={bow:"default"}]

# Throwable
give @a[scores={playerid=1..}] minecraft:diamond_hoe[custom_model_data=38,custom_name='{"translate":"item.tophat","italic":false}',hide_additional_tooltip={},custom_data={custom:"tophat"}]
give @a[scores={playerid=1..}] ink_sac 10
give @a[scores={playerid=1..}] magma_cream 10
give @a[scores={playerid=1..}] minecraft:snowball 2

# Potion
give @a[scores={playerid=1..}] minecraft:potion[custom_data={custom:"swiftness"}]
give @a[scores={playerid=1..}] minecraft:potion[custom_data={custom:"leaping"}]
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:healing"}] 3
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:strong_healing"}] 2
give @a[scores={playerid=1..}] minecraft:potion[custom_data={custom:"fire_resistance"}]
give @a[scores={playerid=1..}] minecraft:gold_nugget[custom_model_data=40,custom_data={custom:"milk_bottle"}] 3
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:water"}] 2

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
