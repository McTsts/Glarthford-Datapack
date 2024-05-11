# lobby table
data modify storage minecraft:board_ai boardM set from storage minecraft:board_ai boards[0]
#
tp @e[tag=board_rc,type=villager] ~ -100 ~
tp @e[tag=board,type=villager] ~ -100 ~
kill @e[tag=board_as_main,type=armor_stand]
kill @e[tag=board_as,type=armor_stand]
kill @e[tag=board,type=minecraft:villager]
kill @e[tag=board_rc,type=minecraft:villager]
kill @e[tag=b_learn,type=armor_stand]
kill @e[tag=boardDis]
scoreboard players reset * b_playing
scoreboard players reset * r_click
scoreboard players reset win b_info
scoreboard players reset turn b_turn
scoreboard players reset total b_turn
tag @e[tag=board,limit=1,sort=nearest,type=villager] remove used
summon minecraft:villager 166.5 24 -100.5 {Tags:["board","lobby","board_entity"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board,type=villager] run summon minecraft:armor_stand ~ ~ ~ {Tags:["board_as_main","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:32}}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["board_as","5","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~ {Tags:["board_as","8","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~-0.27 {Tags:["board_as","9","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~.27 ~ ~.27 {Tags:["board_as","7","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~-0.27 {Tags:["board_as","6","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~.27 {Tags:["board_as","4","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~-0.27 {Tags:["board_as","3","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~ {Tags:["board_as","2","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=board_as_main,type=armor_stand] at @s run summon minecraft:armor_stand ~-0.27 ~ ~0.27 {Tags:["board_as","1","board_entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"",Count:1b}]}
execute as @e[tag=1,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 1
execute as @e[tag=2,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 2
execute as @e[tag=3,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 3
execute as @e[tag=4,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 4
execute as @e[tag=5,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 5
execute as @e[tag=6,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 6
execute as @e[tag=7,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 7
execute as @e[tag=8,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 8
execute as @e[tag=9,tag=board_as,type=armor_stand] run scoreboard players set @s b_id 9
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~.13 ~ ~.13 {Tags:["board_rc","board_entity"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~-.13 ~ ~.13 {Tags:["board_rc","board_entity"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~.13 ~ ~-.13 {Tags:["board_rc","board_entity"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}
execute at @e[tag=board_as_main,type=armor_stand] run summon minecraft:villager ~-.13 ~ ~-.13 {Tags:["board_rc","board_entity"],Invulnerable:1b,NoAI:1b,Silent:1b,Team:"noc"}