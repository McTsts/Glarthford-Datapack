summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["signRayEval"],Particle:"block air",Effects:[]}
execute store result score @s signRay run data get entity @e[tag=signRayEval,limit=1] Pos[1] 100
execute as @e[tag=signRayEval] at @s align xyz run tp @s ~ ~ ~
execute store result score temp signRay run data get entity @e[tag=signRayEval,limit=1] Pos[1] 100
scoreboard players operation @s signRay -= temp signRay
kill @e[tag=signRayEval]

execute if score @s signSneak matches 1.. run scoreboard players remove @s signRay 35

execute if score @s signRay matches 55..100 run scoreboard players set @s signRay 1
execute if score @s signRay matches 45..54 run scoreboard players set @s signRay 2
execute if score @s signRay matches 35..44 run scoreboard players set @s signRay 3
execute if score @s signRay matches 4..34 run scoreboard players set @s signRay 4