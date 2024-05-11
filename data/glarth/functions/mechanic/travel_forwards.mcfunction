#Time
scoreboard players add tick Dis 1

#Baker
execute if score quest Stats matches 1 run scoreboard players add @e[tag=baker,scores={action=-10000..}] action 1
execute if score quest Stats matches 1 as @e[tag=baker,scores={action=-10000..}] run function glarth:mechanic/action/bread

#Graveyard Guard
scoreboard players add @e[tag=graveyard,scores={action=-10000..}] action 1
execute as @e[tag=graveyard,scores={action=-10000..}] run function glarth:mechanic/action/walk_away

# Blacksmith | Mine Wall
execute if score quest Stats matches 1..2 run scoreboard players add @e[tag=mine_wall,scores={action=-10000..}] action 1
execute if score quest Stats matches 1..2 as @e[tag=mine_wall,scores={action=-10000..}] run function glarth:mechanic/action/mine_wall
execute if score quest Stats matches 4 run scoreboard players add @e[tag=mine_wall,scores={action=-10000..}] action 1
execute if score quest Stats matches 4 as @e[tag=mine_wall,scores={action=-10000..}] run function glarth:mechanic/action/mine_wall

# Bucket Merchant
execute if score quest Stats matches 5 run scoreboard players add @e[tag=make_bucket,scores={action=-10000..}] action 1
execute if score quest Stats matches 5 as @e[tag=make_bucket,scores={action=-10000..}] run function glarth:mechanic/action/make_bucket

#Church
execute if score quest Stats matches 6 as @e[tag=tower_lower] run function glarth:mechanic/animation/tower_lower
execute if score quest Stats matches 6 as @e[tag=tower_upper] run function glarth:mechanic/animation/tower_upper

# Blacksmith | Blaze Coin
execute if score quest Stats matches 3 run scoreboard players add @e[tag=blaze_coin,scores={action=-10000..}] action 1
execute if score quest Stats matches 3 as @e[tag=blaze_coin,scores={action=-10000..}] run function glarth:mechanic/action/blaze_coin

#Miller
scoreboard players remove @e[tag=miller,scores={action=1..}] action 1
tag @e[tag=miller,scores={action=1}] add b
execute if entity @e[tag=miller,scores={action=1}] run item replace entity @e[tag=wheat] armor.head with air

# Brewer
scoreboard players remove @e[tag=brewer,scores={action=-10000..}] action 1
tag @e[tag=brewer,scores={action=1}] add b

# Wife/Husband
execute unless score quest Stats matches 4..8 unless score quest Stats matches 0..2 unless score quest Stats matches 10..11 as @e[tag=wife2,type=armor_stand] at @s run function glarth:mechanic/action/wife
execute unless score quest Stats matches 4..8 unless score quest Stats matches 0..2 unless score quest Stats matches 10..11 as @e[tag=husband2,type=armor_stand] at @s run function glarth:mechanic/action/husband

# Character Blinking
execute if score travel Dis matches 15.. as @a[gamemode=adventure] at @s as @e[tag=char,type=armor_stand,tag=!charNoAnim,distance=..10] run function glarth:mechanic/char/animated

scoreboard players remove travel Dis 1
execute if score travel Dis matches 1.. run function glarth:mechanic/travel_forwards

