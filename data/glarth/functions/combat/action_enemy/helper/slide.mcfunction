execute if score @s tbcSlideP matches 1.. if score angle tbcAdjLoc matches 10 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^0.025
execute if score @s tbcSlideP matches 1.. if score angle tbcAdjLoc matches 20 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^0.050
execute if score @s tbcSlideP matches 1.. if score angle tbcAdjLoc matches 30 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^0.080
execute if score @s tbcSlideP matches 1.. if score angle tbcAdjLoc matches 40 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^0.120
execute if score @s tbcSlideP matches 1.. if score angle tbcAdjLoc matches 50 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^0.150
execute if score @s tbcSlideN matches 1.. if score angle tbcAdjLoc matches -10 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^-0.025
execute if score @s tbcSlideN matches 1.. if score angle tbcAdjLoc matches -20 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^-0.050
execute if score @s tbcSlideN matches 1.. if score angle tbcAdjLoc matches -30 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^-0.080
execute if score @s tbcSlideN matches 1.. if score angle tbcAdjLoc matches -40 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^-0.120
execute if score @s tbcSlideN matches 1.. if score angle tbcAdjLoc matches -50 at @s rotated as @e[type=minecraft:wither_skeleton,tag=endArena,limit=1] run tp @s ^ ^ ^-0.150

execute if score angle tbcAdjLoc matches 10 run scoreboard players remove @s tbcSlideP 25
execute if score angle tbcAdjLoc matches 20 run scoreboard players remove @s tbcSlideP 50
execute if score angle tbcAdjLoc matches 30 run scoreboard players remove @s tbcSlideP 80
execute if score angle tbcAdjLoc matches 40 run scoreboard players remove @s tbcSlideP 120
execute if score angle tbcAdjLoc matches 50 run scoreboard players remove @s tbcSlideP 150
execute if score angle tbcAdjLoc matches -10 run scoreboard players remove @s tbcSlideN 25
execute if score angle tbcAdjLoc matches -20 run scoreboard players remove @s tbcSlideN 50
execute if score angle tbcAdjLoc matches -30 run scoreboard players remove @s tbcSlideN 80
execute if score angle tbcAdjLoc matches -40 run scoreboard players remove @s tbcSlideN 120
execute if score angle tbcAdjLoc matches -50 run scoreboard players remove @s tbcSlideN 150