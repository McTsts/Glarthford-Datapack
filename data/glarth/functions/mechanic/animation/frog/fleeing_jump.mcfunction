execute rotated 0 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO1"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated 45 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO2"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated 90 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO3"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated 135 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO4"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated 180 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO5"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated -135 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO6"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated -90 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO7"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute rotated -45 0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogFleeOption","fFO8"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute as @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1] at @s if block ~ ~-1 ~ water run kill @s
execute as @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1] at @s if block ~ ~-1 ~ #all[waterlogged=true] run kill @s
execute as @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1] at @s if block ~ ~-1 ~ #glarth:transparent run kill @s
execute as @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1] at @s unless block ~ ~ ~ #glarth:transparent run kill @s
scoreboard players set frogFleeOption Temp 0
execute as @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1] run scoreboard players add frogFleeOption Temp 1
execute if score frogFleeOption Temp matches 8 as @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest] at @s run kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=5,sort=furthest]
execute if score frogFleeOption Temp matches 7 as @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest] at @s run kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=4,sort=furthest]
execute if score frogFleeOption Temp matches 6 as @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest] at @s run kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=3,sort=furthest]
execute if score frogFleeOption Temp matches 5 as @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest] at @s run kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=2,sort=furthest]
execute if score frogFleeOption Temp matches 4 as @e[tag=frogEnter,type=area_effect_cloud,limit=1,sort=nearest] at @s run kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=1,sort=furthest]
kill @e[tag=frogFleeOption,type=area_effect_cloud,limit=2,sort=random,distance=..1]
tp @s ~ ~ ~ facing entity @e[tag=frogFleeOption,limit=1,sort=nearest,type=area_effect_cloud,distance=..1]
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO1] run data merge entity @s {Motion:[0.0d,0.25d,0.1d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO2] run data merge entity @s {Motion:[-0.05d,0.25d,0.05d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO3] run data merge entity @s {Motion:[-0.1d,0.25d,0.0d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO4] run data merge entity @s {Motion:[-0.05d,0.25d,-0.05d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO5] run data merge entity @s {Motion:[0.0d,0.25d,-0.1d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO6] run data merge entity @s {Motion:[0.05d,0.25d,-0.05d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO7] run data merge entity @s {Motion:[0.1d,0.25d,0.0d],NoGravity:0,Marker:0}
execute if entity @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1,tag=fFO8] run data merge entity @s {Motion:[0.05d,0.25d,0.05d],NoGravity:0,Marker:0}
kill @e[tag=frogFleeOption,type=area_effect_cloud,distance=..1]
data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:49}}]}
scoreboard players set @s frogAnimation 40
