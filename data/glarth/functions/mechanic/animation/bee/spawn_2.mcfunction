summon minecraft:armor_stand -13.47 28.5 -257.45 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":220}}],Invisible:1,Marker:1,NoGravity:1,Tags:["bee","bee2","die3","beeNew"],Rotation:[0.0f,0.0f]}
execute as @e[tag=beeNew] run function glarth:mechanic/animation/bee/next
tag @e[tag=beeNew] remove beeNew