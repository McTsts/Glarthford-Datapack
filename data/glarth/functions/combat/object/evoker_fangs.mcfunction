summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcEvokerFangsTemp","tbc"]}
execute if entity @e[tag=tbcEnemy,distance=..2,tag=!tbcEnderPriest] run kill @e[tag=tbcEvokerFangsTemp]
execute if entity @e[tag=tbcEnemy,distance=..1.5,tag=tbcEnderPriest] run kill @e[tag=tbcEvokerFangsTemp]

scoreboard players set r Random 5
function glarth:util/rand_tbc
execute if score n Random matches 1 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~-0.6 ~ ~
execute if score n Random matches 2 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~-0.3 ~ ~
execute if score n Random matches 3 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~
execute if score n Random matches 4 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~0.3 ~ ~
execute if score n Random matches 5 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~0.6 ~ ~

scoreboard players set r Random 5
function glarth:util/rand_tbc
execute if score n Random matches 1 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~-0.6
execute if score n Random matches 2 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~-0.3
execute if score n Random matches 3 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~
execute if score n Random matches 4 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~0.3
execute if score n Random matches 5 as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run tp @s ~ ~ ~0.6

execute as @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon minecraft:evoker_fangs ~ ~-0.3 ~
kill @e[tag=tbcEvokerFangsTemp,limit=1,sort=nearest,type=area_effect_cloud] 

execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS1,distance=..1.5] as @a[scores={playerid=1},tag=!tbcEFHit] run function glarth:combat/effect/fangs
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS2,distance=..1.5] as @a[scores={playerid=2},tag=!tbcEFHit] run function glarth:combat/effect/fangs
execute if entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS3,distance=..1.5] as @a[scores={playerid=3},tag=!tbcEFHit] run function glarth:combat/effect/fangs

