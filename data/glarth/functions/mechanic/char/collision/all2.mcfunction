execute as @e[type=armor_stand,tag=char,tag=!cnoc,distance=5.001..10,tag=hasC,tag=!colThisTick] at @s run function glarth:mechanic/char/collision/remove

execute as @e[type=armor_stand,tag=char_collision,distance=..3] at @s unless entity @e[type=armor_stand,tag=char,tag=!cnoc,distance=..2] run kill @s
execute as @e[type=shulker,tag=char_collision,distance=..3] at @s unless entity @e[type=armor_stand,tag=char,tag=!cnoc,distance=..2] run data merge entity @s {Health:0.0f,DeathTime:18s,Pos:[0.0,0.0,0.0]}

