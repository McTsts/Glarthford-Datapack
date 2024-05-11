execute as @e[tag=duck,type=armor_stand] at @s if entity @a[distance=..40,gamemode=adventure] run function glarth:mechanic/animation/duck/main
execute as @e[tag=duckFlying,type=armor_stand] at @s unless entity @a[distance=..40,gamemode=adventure] run function glarth:mechanic/animation/duck/main
execute as @e[tag=dragonfly,type=armor_stand] at @s if entity @a[distance=..50,gamemode=adventure] run function glarth:mechanic/animation/dragonfly/main
execute as @e[tag=firefly,type=armor_stand] at @s if entity @a[distance=..50,gamemode=adventure] run function glarth:mechanic/animation/firefly/main
execute as @e[tag=crow,tag=!crowProx,type=armor_stand] at @s if entity @a[distance=..10,gamemode=adventure] run function glarth:mechanic/animation/crow/main
execute as @e[tag=crowProx,type=armor_stand] at @s if entity @a[distance=..50,gamemode=adventure] run function glarth:mechanic/animation/crow/main
execute as @e[tag=crowFlying,type=armor_stand] at @s unless entity @a[distance=..50,gamemode=adventure] run function glarth:mechanic/animation/crow/main
execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/butterfly/main
execute if entity @e[tag=owl,type=armor_stand] run function glarth:mechanic/animation/owl/main
execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/bee/main
execute as @e[tag=frog,type=armor_stand] at @s if entity @a[distance=..25,gamemode=adventure] run function glarth:mechanic/animation/frog/main
execute as @e[tag=lava_dragon,type=armor_stand,tag=!lava_dragonPerm] at @s if entity @a[distance=..50,gamemode=adventure] run function glarth:mechanic/animation/lava_dragon/main
execute as @e[tag=lava_dragon,type=armor_stand,tag=lava_dragonPerm] at @s run function glarth:mechanic/animation/lava_dragon/main