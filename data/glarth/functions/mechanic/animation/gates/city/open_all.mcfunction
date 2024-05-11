summon minecraft:armor_stand 7.5 26.0 -222.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:144s}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_north"],Silent:1b}
fill 5 26 -223 9 31 -223 jungle_fence replace minecraft:spruce_fence

execute unless block -20 26 -198 air run summon minecraft:armor_stand -19.5 26.0 -195.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:144s}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_west"],Rotation:[90.0f,0.0f],Silent:1b}
execute unless block -20 26 -198 air run fill -20 26 -198 -20 31 -194 jungle_fence replace minecraft:spruce_fence

execute unless block 34 26 -198 air run summon minecraft:armor_stand 34.5 26.0 -195.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:144s}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_east"],Rotation:[90.0f,0.0f],Silent:1b}
execute unless block 34 26 -198 air run fill 34 26 -198 34 31 -194 jungle_fence replace minecraft:spruce_fence


scoreboard players set Gates Animation 0
scoreboard players set GatesX Animation 1