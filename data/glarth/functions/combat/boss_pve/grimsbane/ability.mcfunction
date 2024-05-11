scoreboard players set r Random 5
function glarth:util/rand_tbc
execute as @e[tag=area_main] at @s if score n Random matches 1..1 run function glarth:combat/boss_pve/grimsbane/ability1
execute as @e[tag=area_main] at @s if score n Random matches 2..2 run function glarth:combat/boss_pve/grimsbane/ability2
execute as @e[tag=area_main] at @s if score n Random matches 3..3 run function glarth:combat/boss_pve/grimsbane/ability3
execute as @e[tag=area_main] at @s if score n Random matches 4..4 run function glarth:combat/boss_pve/grimsbane/ability4
execute as @e[tag=area_main] at @s if score n Random matches 5..5 run function glarth:combat/boss_pve/grimsbane/ability5
scoreboard players reset @e[tag=grimsbane_boss] tsTimer