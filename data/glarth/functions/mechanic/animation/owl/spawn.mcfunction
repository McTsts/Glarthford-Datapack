scoreboard players set r Random 5
function glarth:util/randomish
execute at @e[tag=owl,sort=random,limit=1] if entity @e[tag=owl,distance=1..] run scoreboard players set n Random 0
execute if score n Random matches 1 positioned 61 29.6 -258 unless entity @e[tag=owl,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":170}}],Invisible:1,NoGravity:1,Rotation:[65.0f,0.0f],Tags:["owl","owl_idle"],Marker:1}
execute if score n Random matches 2 positioned 68 29.6 -227 unless entity @e[tag=owl,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":170}}],Invisible:1,NoGravity:1,Rotation:[115.0f,0.0f],Tags:["owl","owl_idle"],Marker:1}
execute if score n Random matches 3 positioned 47 30.6 -234 unless entity @e[tag=owl,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":170}}],Invisible:1,NoGravity:1,Rotation:[-155.0f,0.0f],Tags:["owl","owl_idle"],Marker:1}
execute if score n Random matches 4 positioned 57 32.6 -243 unless entity @e[tag=owl,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":170}}],Invisible:1,NoGravity:1,Rotation:[25.0f,0.0f],Tags:["owl","owl_idle"],Marker:1}
execute if score n Random matches 5 positioned -35 36.5 -172 unless entity @e[tag=owl,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":170}}],Invisible:1,NoGravity:1,Rotation:[-135.0f,0.0f],Tags:["owl","owl_idle"],Marker:1}