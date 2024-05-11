scoreboard players set millSpeed Animation 30
execute unless entity @e[tag=events,tag=evgbC,type=area_effect_cloud] as @e[tag=mill,type=armor_stand] unless score quest Stats matches 9 unless score doingPoT Stats matches 1 run function glarth:mechanic/animation/mill
execute as @e[tag=ruins_flag,type=armor_stand] if entity @a[x=-37,y=46,z=-169,distance=..50] run function glarth:mechanic/animation/flag
execute as @e[tag=ruins_flag,type=armor_stand] if entity @a[x=-37,y=46,z=-169,distance=..50] run function glarth:mechanic/animation/flag
execute as @e[tag=ruins_flag,type=armor_stand] if entity @a[x=-37,y=46,z=-169,distance=..50] run function glarth:mechanic/animation/flag
execute as @e[tag=ruins_flag,type=armor_stand] if entity @a[x=-37,y=46,z=-169,distance=..50] run function glarth:mechanic/animation/flag
execute as @e[tag=ruins_flag,type=armor_stand] if entity @a[x=-37,y=46,z=-169,distance=..50] run function glarth:mechanic/animation/flag
execute unless score lowGraphics Stats matches 1 unless score quest Stats matches 9..10 run function glarth:mechanic/animation/ship/main
execute unless score lowGraphics Stats matches 1 unless score quest Stats matches 9..10 run function glarth:mechanic/animation/ship/main
execute unless score lowGraphics Stats matches 1 unless score quest Stats matches 9..10 run function glarth:mechanic/animation/ship/main

execute unless score lowGraphics Stats matches 1 if score quest Stats matches 1.. as @a[gamemode=adventure] at @s unless score @s dimension matches 1.. run function glarth:mechanic/wind/check_storm
execute unless score lowGraphics Stats matches 1 if score quest Stats matches 1.. as @a[gamemode=spectator] at @s unless score @p[gamemode=adventure] dimension matches 1.. run function glarth:mechanic/wind/check_storm