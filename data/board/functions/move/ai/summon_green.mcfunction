summon minecraft:area_effect_cloud 8 7 8 {Tags:["green","RAM"]}
scoreboard players remove green b_getarray 1
execute if score green b_getarray matches 1.. run function board:move/ai/summon_green