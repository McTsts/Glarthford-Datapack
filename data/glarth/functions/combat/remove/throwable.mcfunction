function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:apple"}
execute if score attackType tbcStats matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:beetroot"}
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:flint"}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:egg"}
execute if score attackType tbcStats matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:snowball"}
execute if score attackType tbcStats matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:ink_sac"}
execute if score attackType tbcStats matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:scute"}
execute if score attackType tbcStats matches 8 run data modify storage glarth:main invget.in set value {id:"minecraft:gold_nugget",tag:{custom:"bee_hive"}}
execute if score attackType tbcStats matches 9 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 10 run data modify storage glarth:main invget.in set value {id:"minecraft:magma_cream"}
execute if score attackType tbcStats matches 11 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 12 run data modify storage glarth:main invget.in set value {id:"minecraft:spider_eye"}
execute if score attackType tbcStats matches 13 run data modify storage glarth:main invget.in set value {id:"minecraft:slime_ball"}
execute if data storage glarth:main invget.in unless score attackType tbcStats matches 8 run function glarth:inventory/get
execute if data storage glarth:main invget.in if score attackType tbcStats matches 8 run function glarth:inventory/get3
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:inventory/remove
function glarth:combat/remove/get
execute if score attackType tbcStats matches 1 run scoreboard players remove @s tbcThrowable1 1
execute if score attackType tbcStats matches 2 run scoreboard players remove @s tbcThrowable2 1
execute if score attackType tbcStats matches 3 run scoreboard players remove @s tbcThrowable3 1
execute if score attackType tbcStats matches 4 run scoreboard players remove @s tbcThrowable4 1
execute if score attackType tbcStats matches 5 run scoreboard players remove @s tbcThrowable5 1
execute if score attackType tbcStats matches 6 run scoreboard players remove @s tbcThrowable6 1
execute if score attackType tbcStats matches 7 run scoreboard players remove @s tbcThrowable7 1
execute if score attackType tbcStats matches 8 run scoreboard players remove @s tbcThrowable8 1
execute if score attackType tbcStats matches 10 run scoreboard players remove @s tbcThrowable10 1
execute if score attackType tbcStats matches 12 run scoreboard players remove @s tbcThrowable12 1
execute if score attackType tbcStats matches 13 run scoreboard players remove @s tbcThrowable13 1