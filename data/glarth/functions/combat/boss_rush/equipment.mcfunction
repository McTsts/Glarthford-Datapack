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
give @a[scores={playerid=1..}] minecraft:crossbow[custom_data={bow:"crossbow"}]
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
execute as @a[scores={playerid=1..}] run function glarth:mechanic/staff/get_bee
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
execute as @a[scores={playerid=1..}] run function glarth:mechanic/give/beehive
execute as @a[scores={playerid=1..}] run function glarth:mechanic/give/beehive
give @a[scores={playerid=1..}] minecraft:diamond_hoe[custom_model_data=38,custom_name='{"translate":"item.tophat","italic":false}',hide_additional_tooltip={},custom_data={custom:"tophat"}]

# Potion
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:speed"}] 1
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:leaping"}] 1
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:healing"}] 3
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:strong_healing"}] 1
give @a[scores={playerid=1..}] minecraft:potion[custom_data={custom:"fire_resistance"}] 1
give @a[scores={playerid=1..}] minecraft:gold_nugget[custom_model_data=40,custom_data={custom:"milk_bottle"}] 1
give @a[scores={playerid=1..}] minecraft:potion[potion_contents={potion:"minecraft:water"}] 1

# Pouch
give @a[scores={playerid=1..}] minecraft:cooked_beef 10
give @a[scores={playerid=1..}] minecraft:pumpkin_pie 7
give @a[scores={playerid=1..}] minecraft:apple 20
give @a[scores={playerid=1..}] minecraft:golden_apple 7