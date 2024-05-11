#Time
scoreboard players remove tick Dis 1

#Baker
execute if score quest Stats matches 1..2 run scoreboard players remove @e[tag=baker,scores={action=-10000..}] action 1
execute if score quest Stats matches 1..2 as @e[tag=baker,scores={action=-10000..}] run function glarth:mechanic/action/bread

#Graveyard Guard
scoreboard players remove @e[tag=graveyard,scores={action=-10000..}] action 1
execute as @e[tag=graveyard,scores={action=-10000..}] run function glarth:mechanic/action/walk_away

# Blacksmith | Mine Wall
execute if score quest Stats matches 1..2 run scoreboard players remove @e[tag=mine_wall,scores={action=-10000..}] action 1
execute if score quest Stats matches 1..2 as @e[tag=mine_wall,scores={action=-10000..}] run function glarth:mechanic/action/mine_wall
execute if score quest Stats matches 4 run scoreboard players remove @e[tag=mine_wall,scores={action=-10000..}] action 1
execute if score quest Stats matches 4 as @e[tag=mine_wall,scores={action=-10000..}] run function glarth:mechanic/action/mine_wall

# Bucket Merchant
execute if score quest Stats matches 5 run scoreboard players remove @e[tag=make_bucket,scores={action=-10000..}] action 1
execute if score quest Stats matches 5 as @e[tag=make_bucket,scores={action=-10000..}] run function glarth:mechanic/action/make_bucket

#Church
#execute if score quest Stats matches 6 as @e[tag=tower_lower] run function glarth:mechanic/animation/tower_lower_bw
#execute if score quest Stats matches 6 as @e[tag=tower_upper] run function glarth:mechanic/animation/tower_upper_bw

# Blacksmith | Blaze Coin
execute if score quest Stats matches 3 run scoreboard players remove @e[tag=blaze_coin,scores={action=-10000..}] action 1
execute if score quest Stats matches 3 as @e[tag=blaze_coin,scores={action=-10000..}] run function glarth:mechanic/action/blaze_coin

#Miller
scoreboard players add @e[tag=miller,scores={action=-10000..}] action 1
tag @e[tag=miller,scores={action=2}] remove b
execute if entity @e[tag=miller,scores={action=2}] run item replace entity @e[tag=wheat] armor.head with wheat

# Brewer
scoreboard players add @e[tag=brewer,scores={action=-10000..}] action 1
tag @e[tag=brewer,scores={action=2}] remove b

# Wife/Husband
execute unless score quest Stats matches 4..8 unless score quest Stats matches 0..2 unless score quest Stats matches 10..11 as @e[tag=wife2,type=armor_stand] at @s run function glarth:mechanic/action/wife_bw
execute unless score quest Stats matches 4..8 unless score quest Stats matches 0..2 unless score quest Stats matches 10..11 as @e[tag=husband2,type=armor_stand] at @s run function glarth:mechanic/action/husband_bw

scoreboard players remove travel Dis 1
execute if score travel Dis matches 1.. run function glarth:mechanic/travel_backwards