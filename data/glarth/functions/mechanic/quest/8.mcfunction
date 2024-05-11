execute positioned -160 34 -232 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players set @s dimension 0
execute positioned -160 34 -232 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run tp @s ~71 ~-13 ~29
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run stopsound @s * time
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run scoreboard players set @s dimension 1
execute positioned -100 21 -204 as @a[distance=..10,gamemode=adventure] at @s if block ~ ~ ~ structure_void run tp @s ~-71 ~13 ~-29

execute as @e[type=armor_stand,tag=ghastDis] at @s run function glarth:mechanic/dim_nether/ghast
execute as @e[type=armor_stand,tag=ghastName] at @s at @e[type=armor_stand,distance=..10,tag=ghastDis] run tp @s ~ ~5.5 ~
execute as @e[type=armor_stand,tag=ghastDis] at @s as @p[distance=..5,gamemode=adventure] at @s positioned ^ ^0.5 ^1 run tp @e[type=armor_stand,tag=ghast,distance=..20] ~ ~ ~


execute as @e[type=armor_stand,tag=piglin2cut] at @s run function glarth:mechanic/dim_nether/piglin_cut
execute as @e[type=armor_stand,tag=piglin2,tag=h] at @s run function glarth:mechanic/dim_nether/zombie_cut


function glarth:mechanic/dim_nether/strider



execute if score lowGraphics Stats matches 0 run function glarth:mechanic/quest/blaze_glow2

