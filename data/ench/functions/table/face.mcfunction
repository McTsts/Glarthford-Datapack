execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["etFace"],Particle:"item apple"}
execute if entity @s[tag=!faceJerozgen] as @e[tag=etFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute if entity @s[tag=faceJerozgen] as @e[tag=etFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] run tp @s ~ ~ ~ facing entity @e[tag=tbcAllyJerozgen,limit=1]
execute store result score $fp enchAnim run data get entity @e[tag=etFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] Rotation[0]
execute store result score $fet enchAnim run data get entity @s Rotation[0]
scoreboard players operation $fet enchAnim -= $fp enchAnim
scoreboard players add $fet enchAnim 180
scoreboard players operation $fet enchAnim %= 360 Const
scoreboard players remove $fet enchAnim 180
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches 20.. run function ench:table/face/n15
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches 10..19 run function ench:table/face/n7
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches 5..9 run function ench:table/face/n4
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches 1..4 run function ench:table/face/n1
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches ..-20 run function ench:table/face/15
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches -19..-10 run function ench:table/face/7
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches -9..-5 run function ench:table/face/4
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches -4..-1 run function ench:table/face/1
execute as @s[tag=!enchTemp] at @s if score $fet enchAnim matches 0 run function ench:table/face/bob
tag @s remove enchTemp
kill @e[tag=etFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] 

scoreboard players set @s[scores={enchAnimBob=40}] enchAnimBob 0