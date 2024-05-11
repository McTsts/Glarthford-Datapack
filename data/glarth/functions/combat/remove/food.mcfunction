function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:spider_eye"}
execute if score attackType tbcStats matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:poisonous_potato"}
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:rotten_flesh"}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:chicken"}
execute if score attackType tbcStats matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:beetroot"}
execute if score attackType tbcStats matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:potato"}
execute if score attackType tbcStats matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:cookie"}
execute if score attackType tbcStats matches 8 run data modify storage glarth:main invget.in set value {id:"minecraft:mutton"}
execute if score attackType tbcStats matches 9 run data modify storage glarth:main invget.in set value {id:"minecraft:cod"}
execute if score attackType tbcStats matches 10 run data modify storage glarth:main invget.in set value {id:"minecraft:beef"}
execute if score attackType tbcStats matches 11 run data modify storage glarth:main invget.in set value {id:"minecraft:rabbit"}
execute if score attackType tbcStats matches 12 run data modify storage glarth:main invget.in set value {id:"minecraft:porkchop"}
execute if score attackType tbcStats matches 13 run data modify storage glarth:main invget.in set value {id:"minecraft:carrot"}
execute if score attackType tbcStats matches 14 run data modify storage glarth:main invget.in set value {id:"minecraft:apple"}
execute if score attackType tbcStats matches 15 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_rabbit"}
execute if score attackType tbcStats matches 16 run data modify storage glarth:main invget.in set value {id:"minecraft:baked_potato"}
execute if score attackType tbcStats matches 17 run data modify storage glarth:main invget.in set value {id:"minecraft:bread"}
execute if score attackType tbcStats matches 18 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_cod"}
execute if score attackType tbcStats matches 19 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_carrot"}
execute if score attackType tbcStats matches 20 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_chicken"}
execute if score attackType tbcStats matches 21 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_mutton"}
execute if score attackType tbcStats matches 22 run data modify storage glarth:main invget.in set value {id:"minecraft:pumpkin_pie"}
execute if score attackType tbcStats matches 23 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_beef"}
execute if score attackType tbcStats matches 24 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_porkchop"}
execute if score attackType tbcStats matches 25 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_apple"}
execute if score attackType tbcStats matches 26 run data modify storage glarth:main invget.in set value {id:"minecraft:enchanted_golden_apple"}
execute if score attackType tbcStats matches 27 run data modify storage glarth:main invget.in set value {id:"minecraft:gray_dye"}
execute if score attackType tbcStats matches 29 run data modify storage glarth:main invget.in set value {id:"minecraft:sweet_berries"}
execute if score attackType tbcStats matches 30 run data modify storage glarth:main invget.in set value {id:"minecraft:salmon"}
execute if score attackType tbcStats matches 31 run data modify storage glarth:main invget.in set value {id:"minecraft:cooked_salmon"}
execute if data storage glarth:main invget.in run function glarth:inventory/get
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
function glarth:inventory/remove
function glarth:combat/remove/get
execute if score attackType tbcStats matches 1 run scoreboard players remove @s tbcFood1 1
execute if score attackType tbcStats matches 2 run scoreboard players remove @s tbcFood2 1
execute if score attackType tbcStats matches 3 run scoreboard players remove @s tbcFood3 1
execute if score attackType tbcStats matches 4 run scoreboard players remove @s tbcFood4 1
execute if score attackType tbcStats matches 5 run scoreboard players remove @s tbcFood5 1
execute if score attackType tbcStats matches 6 run scoreboard players remove @s tbcFood6 1
execute if score attackType tbcStats matches 7 run scoreboard players remove @s tbcFood7 1
execute if score attackType tbcStats matches 8 run scoreboard players remove @s tbcFood8 1
execute if score attackType tbcStats matches 9 run scoreboard players remove @s tbcFood9 1
execute if score attackType tbcStats matches 10 run scoreboard players remove @s tbcFood10 1
execute if score attackType tbcStats matches 11 run scoreboard players remove @s tbcFood11 1
execute if score attackType tbcStats matches 12 run scoreboard players remove @s tbcFood12 1
execute if score attackType tbcStats matches 13 run scoreboard players remove @s tbcFood13 1
execute if score attackType tbcStats matches 14 run scoreboard players remove @s tbcFood14 1
execute if score attackType tbcStats matches 15 run scoreboard players remove @s tbcFood15 1
execute if score attackType tbcStats matches 16 run scoreboard players remove @s tbcFood16 1
execute if score attackType tbcStats matches 17 run scoreboard players remove @s tbcFood17 1
execute if score attackType tbcStats matches 18 run scoreboard players remove @s tbcFood18 1
execute if score attackType tbcStats matches 19 run scoreboard players remove @s tbcFood19 1
execute if score attackType tbcStats matches 20 run scoreboard players remove @s tbcFood20 1
execute if score attackType tbcStats matches 21 run scoreboard players remove @s tbcFood21 1
execute if score attackType tbcStats matches 22 run scoreboard players remove @s tbcFood22 1
execute if score attackType tbcStats matches 23 run scoreboard players remove @s tbcFood23 1
execute if score attackType tbcStats matches 24 run scoreboard players remove @s tbcFood24 1
execute if score attackType tbcStats matches 25 run scoreboard players remove @s tbcFood25 1
execute if score attackType tbcStats matches 26 run scoreboard players remove @s tbcFood26 1
execute if score attackType tbcStats matches 27 run scoreboard players remove @s tbcFood27 1
execute if score attackType tbcStats matches 29 run scoreboard players remove @s tbcFood29 1
execute if score attackType tbcStats matches 30 run scoreboard players remove @s tbcFood30 1
execute if score attackType tbcStats matches 31 run scoreboard players remove @s tbcFood31 1