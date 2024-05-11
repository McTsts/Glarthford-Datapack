# Level #1
execute positioned 123 32 -173 as @a[distance=..1.5] run scoreboard players set @s mines 1
execute positioned 156 32 -174 as @a[distance=..1.5] run scoreboard players set @s mines 1
execute as @a[scores={mines=1}] run tag @s add playPortalSound
execute as @a[scores={mines=1}] run scoreboard players set r Random 6
execute as @a[scores={mines=1}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=1}] if score n Random matches 1 run function glarth:mechanic/mines/white
execute as @a[scores={mines=1}] if score n Random matches 2 run function glarth:mechanic/mines/orange
execute as @a[scores={mines=1}] if score n Random matches 3..4 run function glarth:mechanic/mines/lime
execute as @a[scores={mines=1}] if score n Random matches 5..6 run function glarth:mechanic/mines/magenta

# Level #2
execute positioned 133 37 -157 as @a[distance=..1.5] run scoreboard players set @s mines 2
execute positioned 138 36 -183 as @a[distance=..1.5] run scoreboard players set @s mines 2
execute positioned 128 36 -181 as @a[distance=..1.5] run scoreboard players set @s mines 2
execute as @a[scores={mines=2}] run tag @s add playPortalSound
execute as @a[scores={mines=2}] run scoreboard players set r Random 8
execute as @a[scores={mines=2}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=2}] if score n Random matches 1 run function glarth:mechanic/mines/lime
execute as @a[scores={mines=2}] if score n Random matches 2 run function glarth:mechanic/mines/magenta
execute as @a[scores={mines=2}] if score n Random matches 3..4 run function glarth:mechanic/mines/yellow
execute as @a[scores={mines=2}] if score n Random matches 5..6 run function glarth:mechanic/mines/light_blue
execute as @a[scores={mines=2}] if score n Random matches 7..8 run function glarth:mechanic/mines/new

# Level #3
execute positioned 156 39 -171 as @a[distance=..1.5] run scoreboard players set @s mines 3
execute positioned 139 37 -185 as @a[distance=..1.5] run scoreboard players set @s mines 3
execute positioned 68 48 -161 as @a[distance=..1.5] run scoreboard players set @s mines 3
execute as @a[scores={mines=3}] run tag @s add playPortalSound
execute as @a[scores={mines=3}] run scoreboard players set r Random 9
execute as @a[scores={mines=3}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=3}] if score n Random matches 1 run function glarth:mechanic/mines/yellow
execute as @a[scores={mines=3}] if score n Random matches 2 run function glarth:mechanic/mines/light_blue
execute as @a[scores={mines=3}] if score n Random matches 3 run function glarth:mechanic/mines/new
execute as @a[scores={mines=3}] if score n Random matches 4..5 run function glarth:mechanic/mines/pink
execute as @a[scores={mines=3}] if score n Random matches 6..7 run function glarth:mechanic/mines/gray
execute as @a[scores={mines=3}] if score n Random matches 8..9 run function glarth:mechanic/mines/light_gray

# Level #4
execute positioned 133 46 -161 as @a[distance=..1.5] run scoreboard players set @s mines 4
execute positioned 127 43 -175 as @a[distance=..1.5] run scoreboard players set @s mines 4
execute positioned 156 43 -172 as @a[distance=..1.5] run scoreboard players set @s mines 4
execute positioned 161 43 -171 as @a[distance=..1.5] run scoreboard players set @s mines 4
execute as @a[scores={mines=4}] run tag @s add playPortalSound
execute as @a[scores={mines=4}] run scoreboard players set r Random 7
execute as @a[scores={mines=4}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=4}] if score n Random matches 1 run function glarth:mechanic/mines/pink
execute as @a[scores={mines=4}] if score n Random matches 2 run function glarth:mechanic/mines/gray
execute as @a[scores={mines=4}] if score n Random matches 3 run function glarth:mechanic/mines/light_gray
execute as @a[scores={mines=4}] if score n Random matches 4..5 run function glarth:mechanic/mines/purple
execute as @a[scores={mines=4}] if score n Random matches 6..7 run function glarth:mechanic/mines/blue

# Level #5
execute positioned 91 20 -167 as @a[distance=..1.5] run scoreboard players set @s mines 5
execute positioned 71 32 -180 as @a[distance=..1.5] run scoreboard players set @s mines 5
execute as @a[scores={mines=5}] run tag @s add playPortalSound
execute as @a[scores={mines=5}] run scoreboard players set r Random 5
execute as @a[scores={mines=5}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=5}] if score n Random matches 1 run function glarth:mechanic/mines/purple
execute as @a[scores={mines=5}] if score n Random matches 2 run function glarth:mechanic/mines/blue
execute as @a[scores={mines=5}] if score n Random matches 3..5 run function glarth:mechanic/mines/cyan

# Level #6
execute positioned 147 48 -189 as @a[distance=..1.5] run scoreboard players set @s mines 6
execute as @a[scores={mines=6}] run tag @s add playPortalSound
execute as @a[scores={mines=6}] run scoreboard players set r Random 2
execute as @a[scores={mines=6}] at @s run function glarth:util/rand_tbc
execute as @a[scores={mines=6}] if score n Random matches 1 run function glarth:mechanic/mines/white
execute as @a[scores={mines=6}] if score n Random matches 2 run function glarth:mechanic/mines/orange

# Shortcut
execute positioned 159 36 -188 as @a[distance=..1.5] run scoreboard players set @s mines 7
execute as @a[scores={mines=7}] run tag @s add playPortalSound
execute as @a[scores={mines=7}] run function glarth:mechanic/mines/cyan

# End
scoreboard players set @a mines 0
execute as @a[tag=playPortalSound] at @a run function glarth:mechanic/mines/portal
tag @a[tag=playPortalSound] remove playPortalSound