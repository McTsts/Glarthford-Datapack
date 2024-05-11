execute as @e[tag=bee1,type=armor_stand] at @s run function glarth:mechanic/animation/bee/1
execute as @e[tag=bee2,type=armor_stand] at @s run function glarth:mechanic/animation/bee/2
execute as @e[tag=bee3,type=armor_stand] at @s run function glarth:mechanic/animation/bee/3
execute as @e[tag=bee,scores={Animation=1..},type=armor_stand] at @s run function glarth:mechanic/animation/bee/hovering
execute as @e[tag=bee,type=armor_stand] at @s run function glarth:mechanic/animation/bee/sound
execute as @e[tag=bee,type=armor_stand,tag=beeForceNext] at @s run function glarth:mechanic/animation/bee/next

execute positioned 40 27 -163 if entity @e[type=slime,tag=beeHiveSlime,distance=..15] if entity @a[distance=..20,gamemode=adventure] unless entity @e[tag=bee,type=armor_stand,distance=..10] run function glarth:mechanic/animation/bee/spawn_1_10
execute positioned -15 26 -257 if entity @e[type=slime,tag=beeHiveSlime,distance=..15] if entity @a[distance=..20,gamemode=adventure] unless entity @e[tag=bee,type=armor_stand,distance=..10] run function glarth:mechanic/animation/bee/spawn_2_10
execute positioned 103 29 -217 if entity @e[type=slime,tag=beeHiveSlime,distance=..15] if entity @a[distance=..20,gamemode=adventure] unless entity @e[tag=bee,type=armor_stand,distance=..10] run function glarth:mechanic/animation/bee/spawn_3_10