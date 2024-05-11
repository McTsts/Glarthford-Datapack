## Start Remove
# Swamp
setblock -71 49 -135 minecraft:barrier
setblock -44 52 -120 minecraft:barrier

## Seasons


function glarth:mechanic/seasons/create_borders
scoreboard players set stage winter 0
summon minecraft:area_effect_cloud 59 0 -111 {Radius:0.0f,Duration:2147483647,Tags:["winter","winterStart"],Rotation:[180f,0f]}


execute as @e[type=area_effect_cloud,tag=winterCorner] store result score @s winterX run data get entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=winterCorner] store result score @s winterZ run data get entity @s Pos[2]

scoreboard players set max winterX -100000
scoreboard players set max winterZ -100000
scoreboard players set min winterX 100000
scoreboard players set min winterZ 100000

execute as @e[type=area_effect_cloud,tag=winterCorner] run scoreboard players operation max winterX > @s winterX
execute as @e[type=area_effect_cloud,tag=winterCorner] run scoreboard players operation max winterZ > @s winterZ
execute as @e[type=area_effect_cloud,tag=winterCorner] run scoreboard players operation min winterX < @s winterX
execute as @e[type=area_effect_cloud,tag=winterCorner] run scoreboard players operation min winterZ < @s winterZ

scoreboard players set rotation winter 0


## Needs to be summoned at both X+ and Z+ as well as X- and Z- (or also X+ Z- and X- Z+)
summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterSquare","X+Z+"]}
summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterSquare","X+Z-"]}
summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterSquare","X-Z+"]}
summon minecraft:area_effect_cloud ~ 0 ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterSquare","X-Z-"]}

execute store result entity @e[type=area_effect_cloud,tag=X+Z+,tag=winter,limit=1] Pos[0] double 1 run scoreboard players get max winterX
execute store result entity @e[type=area_effect_cloud,tag=X+Z+,tag=winter,limit=1] Pos[2] double 1 run scoreboard players get max winterZ
execute store result entity @e[type=area_effect_cloud,tag=X+Z-,tag=winter,limit=1] Pos[0] double 1 run scoreboard players get max winterX
execute store result entity @e[type=area_effect_cloud,tag=X+Z-,tag=winter,limit=1] Pos[2] double 1 run scoreboard players get min winterZ
execute store result entity @e[type=area_effect_cloud,tag=X-Z+,tag=winter,limit=1] Pos[0] double 1 run scoreboard players get min winterX
execute store result entity @e[type=area_effect_cloud,tag=X-Z+,tag=winter,limit=1] Pos[2] double 1 run scoreboard players get max winterZ
execute store result entity @e[type=area_effect_cloud,tag=X-Z-,tag=winter,limit=1] Pos[0] double 1 run scoreboard players get min winterX
execute store result entity @e[type=area_effect_cloud,tag=X-Z-,tag=winter,limit=1] Pos[2] double 1 run scoreboard players get min winterZ

execute at @e[type=area_effect_cloud,tag=winter,tag=X+Z+,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["winter","winterMain"],Rotation:[180f,0f],UUID:[I;0,0,0,53454]}

scoreboard players set total= load_bar.main 64167
tag @a add show_loading_bar
scoreboard players set game Stats -1

title @a subtitle {"translate":"loading.st2","italic":true}