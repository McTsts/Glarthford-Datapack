forceload add -42 -516
kill @e[tag=echest]
summon minecraft:area_effect_cloud -15 27 -306 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud -58 29 -136 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud 81 7 -194 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud 5 31 -182 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud 50 38 -124 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud -48 27 -270 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud 76 23 -258 {Duration:999999,Tags:["echest"]}
summon minecraft:area_effect_cloud -42 68 -516 {Duration:999999,Tags:["echest"]}
execute as @e[tag=echest] at @s run data modify block ~ ~ ~ CustomName set value '{"translate":"container.enderchest"}'
execute as @e[tag=echest] at @s run data modify block ~ ~ ~ Items set value []
data modify storage echest:main Items set value []