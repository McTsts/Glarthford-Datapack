summon minecraft:area_effect_cloud 8 7 8 {Tags:["purple","RAM"]}
scoreboard players remove purple b_getarray 1
execute if score purple b_getarray matches 1.. run function board:move/ai/summon_purple