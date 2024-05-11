execute store result score @s mXx run data get entity @s Pos[0] 100
execute store result score @s mZx run data get entity @s Pos[2] 100

summon minecraft:area_effect_cloud ^ ^ ^0.5 {Radius:0.0f,Duration:2147483647,Tags:["frogSwimForward"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute store result score @s mX run data get entity @e[tag=frogSwimForward,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.75] Pos[0] 100
execute store result score @s mZ run data get entity @e[tag=frogSwimForward,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.75] Pos[2] 100
kill @e[tag=frogSwimForward,type=area_effect_cloud,limit=1,sort=nearest,distance=..0.75]

scoreboard players operation @s mX -= @s mXx
scoreboard players operation @s mZ -= @s mZx

execute store result entity @s Motion[0] double 0.0035 run scoreboard players get @s mX
execute store result entity @s Motion[2] double 0.0035 run scoreboard players get @s mZ
