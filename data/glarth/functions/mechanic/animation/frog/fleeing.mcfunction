# Jump towards Lake
execute unless entity @s[tag=frogEntering] if score @s frogAnimation matches ..0 run function glarth:mechanic/animation/frog/fleeing_jump
execute unless entity @s[tag=frogEntering] unless score @s frogAnimation matches 25.. if block ~ ~-0.01 ~ #slabs run function glarth:mechanic/animation/frog/fleeing_jump
execute unless entity @s[tag=frogEntering] unless score @s frogAnimation matches 25.. unless block ~ ~-0.01 ~ #glarth:transparent unless block ~ ~-0.1 ~ water run function glarth:mechanic/animation/frog/fleeing_jump

# Jump into Lake
execute unless entity @s[tag=frogEntering] if score @s frogAnimation matches ..26 unless block ~ ~-0.01 ~ #glarth:transparent unless block ~ ~-0.1 ~ water positioned ~ ~-1 ~ if entity @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.9] run function glarth:mechanic/animation/frog/fleeing_prepare
execute if entity @s[tag=frogEntering,tag=!frogEntered] if score @s frogAnimation matches ..15 unless block ~ ~-0.01 ~ #glarth:transparent unless block ~ ~-0.1 ~ water positioned ~ ~-1 ~ run function glarth:mechanic/animation/frog/fleeing_enter

# Start Swimming
execute if entity @s[tag=frogEntering] if score @s frogAnimation matches ..0 if block ~ ~0.9 ~ water run function glarth:mechanic/animation/frog/fleeing_swim
execute if entity @s[tag=frogEntering] if score @s frogAnimation matches ..0 if block ~ ~0.9 ~ seagrass run function glarth:mechanic/animation/frog/fleeing_swim
execute if entity @s[tag=frogEntering] if score @s frogAnimation matches ..0 if block ~ ~0.9 ~ #all[waterlogged=true] run function glarth:mechanic/animation/frog/fleeing_swim

# Jump Animation
execute if score @s frogAnimation matches 35 run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}]}
execute if score @s frogAnimation matches 1.. run scoreboard players remove @s frogAnimation 1