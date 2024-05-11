execute as @e[tag=necromancer_boss,type=husk] run function glarth:combat/boss_pve/necromancer/main

execute unless entity @e[tag=events,tag=ascension_open,type=area_effect_cloud] unless blocks 94 5 -229 90 1 -230 86 27 -222 masked run function glarth:mechanic/quest/_7/2
execute if entity @a[x=87,y=27,z=-223,distance=..7,scores={iOKey=1..}] run function glarth:mechanic/quest/_7/1
execute positioned 88 27 -222 as @a[distance=..7] at @s positioned ~ ~ -221 if entity @s[distance=..0.6] at @s if block ~ ~ ~ #minecraft:trapdoors if block ~ ~ ~-1 air run tp @s ~ ~ ~-1

execute as @e[tag=halloweenSC,type=minecraft:armor_stand] at @s if entity @a[gamemode=adventure,distance=..40] run function glarth:mechanic/animation/scarecrow/halloween

execute as @e[type=bat,tag=halloweenBat] at @s run function glarth:mechanic/quest/_7/3

execute as @e[tag=magicLightA,type=armor_stand] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=magicLightB,type=armor_stand] at @s run tp @s ~ ~ ~ ~-12 ~

execute as @e[tag=greenFire,type=armor_stand] at @s if entity @a[distance=..15,gamemode=adventure] store result entity @s Rotation[0] float 1 run data get entity @p[gamemode=adventure] Rotation[0]

execute as @a[gamemode=adventure] run function glarth:mechanic/animation/ghost
execute as @a[gamemode=adventure] at @s as @e[tag=hEntitySkull,type=armor_stand,distance=..15] run function glarth:mechanic/animation/halloween_skull

execute as @a[gamemode=adventure] at @s as @e[tag=halloweenJOL,type=armor_stand,distance=..5] at @s run function glarth:mechanic/animation/halloween_jol

execute positioned 101 26 -242 run function glarth:mechanic/quest/_7/4

execute if score timer cedric matches -1000.. run function glarth:mechanic/action/cedric

execute as @r[scores={codDrop=1..}] at @s if entity @e[type=polar_bear,distance=..5,tag=!bearTamed] run function glarth:mechanic/bear_tame
scoreboard players reset * codDrop