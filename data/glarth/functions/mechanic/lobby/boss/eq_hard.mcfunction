# Armor
item replace entity @a[scores={playerid=1..}] armor.head with minecraft:leather_helmet
item replace entity @a[scores={playerid=1..}] armor.chest with minecraft:leather_chestplate
item replace entity @a[scores={playerid=1..}] armor.legs with minecraft:leather_leggings
item replace entity @a[scores={playerid=1..}] armor.feet with minecraft:leather_boots

# Melee
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:iron_sword
give @a[scores={playerid=1..}] minecraft:stone_sword{Damage:115}
give @a[scores={playerid=1..}] minecraft:wooden_sword
give @a[scores={playerid=1..}] minecraft:wooden_sword

# Ranged
give @a[scores={playerid=1..}] minecraft:bow{bow:"default"}
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:arrow 8
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:arrow 20

# Staff
setblock 84 27 -125 shulker_box{LootTable:"glarth:entities/skeleton",LootTableSeed:0} destroy
execute store result block 84 27 -125 LootTableSeed long 1 run scoreboard players get tbc Random
loot give @a[scores={playerid=1..}] mine 84 27 -125 mainhand

# Throwable
give @a[scores={playerid=1..}] ink_sac 2
give @a[scores={playerid=1..}] magma_cream 1
give @a[scores={playerid=1..}] minecraft:snowball 1
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] ink_sac 1
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] magma_cream 1
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] apple 2

# Potion
give @a[scores={playerid=1..}] minecraft:potion{custom:"fire_resistance"}

# Pouch
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 2
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:pumpkin_pie 10
give @a[scores={playerid=1..}] minecraft:cookie 30
execute unless score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:golden_apple 1
execute if score bossRe Stats matches 9.. run give @a[scores={playerid=1..}] minecraft:golden_apple 3
give @a[scores={playerid=1..}] minecraft:cooked_beef 1
give @a[scores={playerid=1..}] minecraft:rotten_flesh 1
give @a[scores={playerid=1..}] minecraft:spider_eye 5