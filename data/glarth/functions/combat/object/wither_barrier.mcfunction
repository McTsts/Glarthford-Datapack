summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcWitherBarrierTemp","tbc"]}
execute if entity @e[tag=tbcEnemy,distance=..2] run kill @e[tag=tbcWitherBarrierTemp]

scoreboard players set r Random 5
function glarth:util/rand_tbc
execute if score n Random matches 1 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~-0.6 ~ ~
execute if score n Random matches 2 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~-0.3 ~ ~
execute if score n Random matches 3 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~
execute if score n Random matches 4 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~0.3 ~ ~
execute if score n Random matches 5 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~0.6 ~ ~

scoreboard players set r Random 5
function glarth:util/rand_tbc
execute if score n Random matches 1 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~-0.6
execute if score n Random matches 2 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~-0.3
execute if score n Random matches 3 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~
execute if score n Random matches 4 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~0.3
execute if score n Random matches 5 as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~0.6

execute as @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run particle smoke ~ ~ ~ 0 0 0 0 5
kill @e[tag=tbcWitherBarrierTemp,limit=1,sort=nearest,type=area_effect_cloud] 
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0 30

execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS1,distance=..1.5] as @a[scores={playerid=1},tag=!tbcFBHit] run function glarth:combat/effect/wither_barrier
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS2,distance=..1.5] as @a[scores={playerid=2},tag=!tbcFBHit] run function glarth:combat/effect/wither_barrier
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS3,distance=..1.5] as @a[scores={playerid=3},tag=!tbcFBHit] run function glarth:combat/effect/wither_barrier

