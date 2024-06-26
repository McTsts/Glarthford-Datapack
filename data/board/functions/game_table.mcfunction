# store lobby table and load game table
data modify storage minecraft:board_ai boards[0] set from storage minecraft:board_ai boardM
execute if score quest Stats matches 1 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[1]
execute if score quest Stats matches 9 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[2]
execute if score quest Stats matches 2 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[3]
execute if score quest Stats matches 3 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[4]
execute if score quest Stats matches 5 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[5]
execute if score quest Stats matches 8 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[6]
execute if score quest Stats matches 6 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[7]
execute if score quest Stats matches 7 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[8]
execute if score quest Stats matches 4 run data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[9]


#
tp @e[tag=board_rc,type=villager] ~ -100 ~
tp @e[tag=board,type=villager] ~ -100 ~
kill @e[tag=board_as_main,type=armor_stand]
kill @e[tag=board_as,type=armor_stand]
kill @e[tag=board,type=villager]
kill @e[tag=board_rc,type=villager]
kill @e[tag=boardDis]
kill @e[tag=b_learn,type=armor_stand]
scoreboard players reset * b_playing
scoreboard players reset * r_click
scoreboard players reset win b_info
scoreboard players reset turn b_turn
scoreboard players reset total b_turn
tag @e[tag=board,limit=1,sort=nearest,type=minecraft:villager] remove used
summon minecraft:villager 10.5 26 -180.0 {Tags:["board","game"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board] run summon minecraft:armor_stand ~ ~ ~ {Tags:["board_as_main"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":32}}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["board_as","5"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~ {Tags:["board_as","4"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~-0.27 {Tags:["board_as","7"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~.27 {Tags:["board_as","1"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~-0.27 {Tags:["board_as","8"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~.27 {Tags:["board_as","2"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~-0.27 {Tags:["board_as","9"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~ {Tags:["board_as","6"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~0.27 {Tags:["board_as","3"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",count:1}]}

execute as @e[tag=1,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 1
execute as @e[tag=2,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 2
execute as @e[tag=3,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 3
execute as @e[tag=4,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 4
execute as @e[tag=5,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 5
execute as @e[tag=6,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 6
execute as @e[tag=7,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 7
execute as @e[tag=8,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 8
execute as @e[tag=9,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 9
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~.13 ~ ~.13 {Tags:["board_rc"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~-.13 ~ ~.13 {Tags:["board_rc"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~.13 ~ ~-.13 {Tags:["board_rc"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~-.13 ~ ~-.13 {Tags:["board_rc"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}