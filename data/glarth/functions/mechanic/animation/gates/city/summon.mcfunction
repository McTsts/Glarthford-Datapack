kill @e[tag=gate]
fill 5 26 -223 9 31 -223 air replace minecraft:spruce_fence
fill 34 26 -198 34 31 -194 air replace minecraft:spruce_fence
fill -20 26 -194 -20 31 -198 air replace minecraft:spruce_fence

summon minecraft:armor_stand 7.5 26.0 -222.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":144}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_north"],Silent:1b}
summon minecraft:armor_stand -19.5 26.0 -195.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":144}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_west"],Rotation:[90.0f,0.0f],Silent:1b}
summon minecraft:armor_stand 34.5 26.0 -195.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":144}}],Marker:1b,Invisible:1b,NoGravity:1b,Tags:["gate","gate_east"],Rotation:[90.0f,0.0f],Silent:1b}

scoreboard players set Gates Animation 0