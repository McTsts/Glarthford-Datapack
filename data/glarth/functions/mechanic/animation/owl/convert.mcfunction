summon minecraft:armor_stand ~ ~-0.05 ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":211}}],Invisible:1,Marker:1,NoGravity:1,Tags:["owl","owl_body","owl_new","die3"]}
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":212}}],Invisible:1,Marker:1,NoGravity:1,Tags:["owl","owl_head","owl_new","die3"]}
execute as @e[tag=owl_new,type=armor_stand] store result entity @s Rotation[0] float 1 run data get entity @e[tag=owl_convert,limit=1] Rotation[0] 1
tp @e[tag=owl_new,type=armor_stand] ~ ~ ~ ~ ~
function glarth:mechanic/kill