execute @e[tag=area_main] ~ ~ ~ testforblock 102 33 -207 air
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!ruby_a] ~ ~ ~ summon minecraft:item 102 33 -207 {Item:{id:"diamond_hoe",Count:1,Damage:43,tag:{Unbreakable:1,HideFlags:63,display:{LocName:"item.ruby"}}},Motion:[0.0,0.1,0.0]}
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @s add ruby_a

execute @e[tag=area_main] ~ ~ ~ testforblock 104 32 -206 air
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!ruby_b] ~ ~ ~ summon minecraft:item 104 32 -206 {Item:{id:"diamond_hoe",Count:1,Damage:43,tag:{Unbreakable:1,HideFlags:63,display:{LocName:"item.ruby"}}},Motion:[0.0,0.1,0.0]}
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @s add ruby_b

execute @e[tag=area_main] ~ ~ ~ testforblock 100 33 -205 air
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!ruby_c] ~ ~ ~ summon minecraft:item 100 33 -205 {Item:{id:"diamond_hoe",Count:1,Damage:43,tag:{Unbreakable:1,HideFlags:63,display:{LocName:"item.ruby"}}},Motion:[0.0,0.1,0.0]}
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @s add ruby_c