execute as @e[tag=netheran_boss,type=wither_skeleton] run function glarth:combat/boss_pve/netheran/main

execute positioned -160 34 -232 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players set @s dimension 0
execute positioned -160 34 -232 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run tp @s ~71 ~-13 ~29
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run stopsound @s * time
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void as @s[tag=!tip45] run function glarth:mechanic/tip/45
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players set @s dimension 1
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run tp @s ~-71 ~13 ~-29

execute unless entity @e[tag=events,type=area_effect_cloud,tag=ld1Spawned] positioned 7 26 -205 if entity @a[distance=..10,gamemode=adventure] run function glarth:mechanic/animation/lava_dragon/s1
execute unless entity @e[tag=events,type=area_effect_cloud,tag=ld1Spawned] positioned 7 26 -205 if entity @a[distance=..10,gamemode=adventure] run tag @e[tag=events,type=area_effect_cloud] add ld1Spawned

execute unless entity @e[tag=events,type=area_effect_cloud,tag=ld3Spawned] positioned -192 29 -230 if entity @a[distance=..3,gamemode=adventure] run function glarth:mechanic/animation/lava_dragon/s3
execute unless entity @e[tag=events,type=area_effect_cloud,tag=ld3Spawned] positioned -192 29 -230 if entity @a[distance=..3,gamemode=adventure] run tag @e[tag=events,type=area_effect_cloud] add ld3Spawned

execute as @e[tag=nether_gate,type=armor_stand] at @s run function glarth:mechanic/animation/gates/nether/move


execute if score lowGraphics Stats matches 0 run function glarth:mechanic/quest/blaze_glow

function glarth:mechanic/dim_nether/strider

execute positioned 7 26 -196 as @e[type=arrow,distance=..40] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 void_air replace barrier
execute positioned 7 26 -196 as @e[type=item,distance=..40] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 void_air replace barrier
execute positioned 7 26 -196 as @a[distance=..40] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 barrier replace void_air


# vilder fix for tower
execute positioned 26 43 -185 as @a[gamemode=adventure,distance=..12] at @s if block ~ 33 ~ barrier run tp @s 26 44 -185