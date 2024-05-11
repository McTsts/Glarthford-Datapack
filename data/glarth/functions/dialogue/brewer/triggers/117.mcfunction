#117 Brewer | Take Potion
function glarth:dialogue/brewer/lines/trade5

# Swiftness (Default)
execute if score quest Stats matches 4 run loot give @s loot glarth:give/potions/swiftness
execute if score quest Stats matches 5 run loot give @s loot glarth:give/potions/swiftness
execute if score quest Stats matches 6 run loot give @s loot glarth:give/potions/swiftness
execute if score quest Stats matches 9 run loot give @s loot glarth:give/potions/swiftness
execute if score quest Stats matches 10 run loot give @s loot glarth:give/potions/swiftness
execute if score quest Stats matches 11 run loot give @s loot glarth:give/potions/swiftness

# Jump (Mines)
execute if score quest Stats matches 1 run loot give @s loot glarth:give/potions/leaping
execute if score quest Stats matches 2 run loot give @s loot glarth:give/potions/leaping

# Fire Resistance (Nether)
execute if score quest Stats matches 3 unless entity @e[tag=brewer,tag=tripleFireRes] run loot give @s loot glarth:give/potions/fire_resistance
execute if score quest Stats matches 3 if entity @e[tag=brewer,tag=tripleFireRes] run loot give @s loot {"pools":[{"rolls":3,"entries":[{"type":"minecraft:loot_table","value":"glarth:give/potions/fire_resistance"}]}]}

execute if score quest Stats matches 8 unless entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone,tag=!tripleFireRes] run loot give @s loot glarth:give/potions/fire_resistance
execute if score quest Stats matches 8 unless entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone,tag=tripleFireRes] run loot give @s loot {"pools":[{"rolls":3,"entries":[{"type":"minecraft:loot_table","value":"glarth:give/potions/fire_resistance"}]}]}

tag @e[tag=brewer,type=armor_stand] remove tripleFireRes

# Regeneration (Piglins)
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run loot give @s loot glarth:give/potions/regeneration
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run function glarth:mechanic/dim_nether/piglin_move3
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run tag @e[tag=brewer,type=armor_stand] add regenPotionDone

# Energizing (Ruins of Ascension)
execute if score quest Stats matches 7 run loot give @s loot glarth:give/potions/energizing


tag @e[tag=brewer,type=armor_stand] remove a
tag @e[tag=brewer,type=armor_stand] remove b