tp @e[tag=fisher] 15 27 -144 180 0
execute as @e[tag=fr] run data merge entity @s {DeathTime:19,Health:0.0f}
tag @e[tag=fisher] remove fishing
item replace entity @e[tag=fisher] armor.head with minecraft:diamond_hoe[damage=8]
summon minecraft:armor_stand 17.3 26.6 -142.6 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":109}}],Pose:{Head:[-45.0f,180.0f,90.0f]},Rotation:[230.0f,0.0f],Invisible:1,Invulnerable:1,Tags:["minnow"],DisabledSlots:4144959}
tag @e[tag=events,type=area_effect_cloud] add evFisherMoves