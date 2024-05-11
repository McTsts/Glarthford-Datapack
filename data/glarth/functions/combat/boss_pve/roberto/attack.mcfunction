scoreboard players set r Random 3
execute as @e[tag=area_main] at @s run function glarth:util/rand_tbc
execute as @e[tag=area_main] at @s if score n Random matches 1..1 run function glarth:combat/boss_pve/roberto/ability1
execute as @e[tag=area_main] at @s if score n Random matches 2..2 run function glarth:combat/boss_pve/roberto/ability2