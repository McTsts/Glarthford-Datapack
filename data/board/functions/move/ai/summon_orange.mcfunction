summon minecraft:area_effect_cloud 8 7 8 {Tags:["orange","RAM"]}
scoreboard players remove orange b_getarray 1
execute if score orange b_getarray matches 1.. run function board:move/ai/summon_orange
