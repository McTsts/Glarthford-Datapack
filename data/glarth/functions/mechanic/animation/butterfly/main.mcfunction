execute as @e[tag=butterflyMob,type=parrot] at @s unless score @s Animation matches 1.. run tag @s[nbt={Motion:[0.0d,0.0d,0.0d]}] add butterflyMove
execute as @e[tag=butterflyMove,type=parrot] at @s run effect give @s minecraft:levitation 2 0 true
execute as @e[tag=butterflyMove,type=parrot] at @s run scoreboard players set @s Animation 50
execute as @e[tag=butterflyMove,type=parrot] at @s run tag @s remove butterflyMove
execute as @e[tag=butterflyAS,type=armor_stand] at @s if entity @a[distance=..10] store result entity @s Rotation[0] float 1 run data get entity @e[tag=butterflyMob,limit=1,sort=nearest,type=parrot] Rotation[0]
scoreboard players remove @e[tag=butterflyMob,type=parrot] Animation 1

scoreboard players add @e[tag=butterflyMob,type=parrot] butterfly 1
execute as @e[scores={butterfly=100..},type=parrot] run scoreboard players operation @s butterflyB = @s butterflyA
execute as @e[scores={butterfly=100..},type=parrot] at @s store result score @s butterflyA run data get entity @s Pos[1]
execute as @e[scores={butterfly=100..},type=parrot] if score @s butterflyA = @s butterflyB run scoreboard players add @s butterflyX 50
execute as @e[scores={butterfly=100..},type=parrot] run scoreboard players set @s butterfly 0

scoreboard players remove @e[tag=butterflyMob,scores={butterflyX=1..},type=parrot] butterflyX 1
execute as @e[scores={butterflyX=1..},type=parrot] at @s if block ^ ^ ^0.1 #glarth:transparent run tp @s ^ ^ ^0.07
execute as @e[scores={butterflyX=1..},type=parrot] at @s unless block ^ ^ ^0.1 #glarth:transparent run tp @s ~ ~ ~ ~45 ~

execute as @e[tag=butterflySpawn,type=area_effect_cloud] at @s if entity @a[distance=7..20,gamemode=adventure] run function glarth:mechanic/animation/butterfly/spawn

execute as @e[type=parrot] if data entity @s Owner at @s as @e[tag=butterflyAS,limit=1,sort=nearest] run function glarth:mechanic/kill
execute as @e[type=parrot] if data entity @s Owner run function glarth:mechanic/kill