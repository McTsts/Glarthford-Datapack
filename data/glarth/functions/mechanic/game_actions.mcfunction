#Actions
execute as @e[tag=meteor,type=area_effect_cloud] at @s run function glarth:mechanic/action/meteor
execute as @e[tag=cave_wall,type=armor_stand] at @s run function glarth:mechanic/action/cave_wall
execute as @e[tag=open_seal,type=armor_stand] at @s run function glarth:mechanic/action/open_seal
execute as @e[tag=ghost1w,type=armor_stand] at @s run function glarth:mechanic/action/ghost1
execute as @e[tag=ghost2w,type=armor_stand] at @s run function glarth:mechanic/action/ghost2
execute as @e[tag=run_off,type=armor_stand] at @s run function glarth:mechanic/action/run_off
execute as @e[tag=fly_off,type=armor_stand] at @s run function glarth:mechanic/action/fly_off
execute as @a[tag=360] at @s run function glarth:mechanic/action/360
execute as @a[tag=tp] at @s run function glarth:mechanic/action/tp
execute as @e[tag=ritual,type=armor_stand] at @s run function glarth:mechanic/action/druid_ritual
execute as @e[tag=cut_tree,type=armor_stand] at @s run function glarth:mechanic/action/cut_tree
execute as @e[tag=open_tutorial,type=armor_stand] at @s run function glarth:mechanic/action/open_tutorial
execute as @e[tag=grave_gate,type=armor_stand] at @s run function glarth:mechanic/animation/gates/grave/move
execute as @e[tag=wife2,type=armor_stand] at @s run function glarth:mechanic/action/wife
execute as @e[tag=husband2,type=armor_stand] at @s run function glarth:mechanic/action/husband
execute as @e[tag=ghost_up,type=armor_stand] at @s run function glarth:mechanic/action/ghost_up
execute as @e[tag=diverScared,type=armor_stand,x=11,y=26,z=-196,distance=..1] at @s run function glarth:mechanic/action/diver
# Time Handeled Scenes
# Baker / Bread
scoreboard players add @e[tag=bread,type=armor_stand] action 1
scoreboard players add @e[tag=breadX,type=armor_stand] action 1
execute as @e[tag=baker,scores={action=0..1200},type=armor_stand] at @s run function glarth:mechanic/action/bread
# Graveyard Guard / Walk Away
scoreboard players add @e[tag=walk_away,type=armor_stand,tag=char] action 1
scoreboard players add @e[tag=walk_awayX,type=armor_stand,tag=char] action 1
execute as @e[tag=graveyard,scores={action=0..2500},type=armor_stand,tag=char] at @s run function glarth:mechanic/action/walk_away
# Blacksmith | Mine Wall
scoreboard players add @e[tag=mine_wall,type=armor_stand] action 1
execute as @e[tag=mine_wall,scores={action=0..1000},type=armor_stand] at @s run function glarth:mechanic/action/mine_wall
# Scarecrow / Fall Over
scoreboard players add @e[tag=scarecrow_fall,type=armor_stand] Animation 1
execute as @e[tag=scarecrow,scores={Animation=1..20},type=armor_stand] run function glarth:mechanic/animation/scarecrow/default
#Miller / Make Flour
scoreboard players remove @e[tag=miller,scores={action=-10000..},type=armor_stand] action 1
tag @e[tag=miller,scores={action=1},type=armor_stand] add b
execute if entity @e[tag=miller,scores={action=1},type=armor_stand] run replaceitem entity @e[tag=wheat,type=armor_stand] armor.head air
# Blacksmith | Blaze Coin
scoreboard players add @e[tag=blaze_coin,type=armor_stand] action 1
execute as @e[tag=blaze_coin,type=armor_stand] at @s run function glarth:mechanic/action/blaze_coin
# Bucket Merchant | Make Bucket
scoreboard players add @e[tag=make_bucket,type=armor_stand] action 1
execute as @e[tag=make_bucket,type=armor_stand] at @s run function glarth:mechanic/action/make_bucket
# Brewer | Potions
execute if entity @e[tag=brewer,scores={action=1..},type=armor_stand,tag=char] run particle minecraft:effect -48.5 32.25 -200.50 0.2 0.5 0.2 0 1
scoreboard players remove @e[tag=brewer,scores={action=-10000..},type=armor_stand,tag=char] action 1
tag @e[tag=brewer,scores={action=1},type=armor_stand,tag=char] add b