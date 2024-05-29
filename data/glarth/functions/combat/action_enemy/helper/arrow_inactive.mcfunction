execute as @e[tag=tbcArrowP,type=armor_stand] at @s run tp @s ^ ^ ^0.2 ~ ~
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowPoison] at @s run particle minecraft:witch ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowFire] at @s run particle minecraft:flame ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowSlowness] at @s run particle block{block_state:{Name:"snow_block"}} ~ ~0.5 ~ 0.1 0.1 0.1 0 1