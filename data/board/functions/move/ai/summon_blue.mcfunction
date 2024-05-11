summon minecraft:area_effect_cloud 8 7 8 {Tags:["blue","RAM"]}
scoreboard players remove blue b_getarray 1
execute if score blue b_getarray matches 1.. run function board:move/ai/summon_blue