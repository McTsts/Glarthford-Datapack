summon minecraft:armor_stand 40 28.5 -162.55 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:220}}],Invisible:1,Marker:1,NoGravity:1,Tags:["bee","bee1","die3","beeNew"],Rotation:[180f,0f]}
execute as @e[tag=beeNew] run function glarth:mechanic/animation/bee/next
tag @e[tag=beeNew] remove beeNew