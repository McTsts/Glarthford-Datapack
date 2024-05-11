function glarth:mechanic/dim_nether/nether_setup

execute unless entity @e[type=armor_stand,tag=ghast,tag=char] if entity @e[type=armor_stand,tag=ghastName] run function glarth:mechanic/dim_nether/ghast_death

execute as @e[tag=piglin2,tag=e,tag=!f] at @s unless entity @a[gamemode=adventure,distance=..20] run function glarth:mechanic/dim_nether/piglin_move1
execute as @e[tag=piglin2,tag=f,tag=!g] positioned -81 26 -207 if entity @a[gamemode=adventure,distance=..10] run function glarth:mechanic/dim_nether/piglin_move2

execute if entity @e[tag=events,tag=nether4] run tp @a[x=-36,y=27,z=-194,distance=..3,gamemode=adventure] -48 27 -194 -90 0