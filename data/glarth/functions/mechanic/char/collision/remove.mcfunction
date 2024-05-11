execute as @e[type=shulker,tag=char_collision,distance=..2] run data merge entity @s {Health:0.0f,DeathTime:18s,Pos:[0.0d,0.0d,0.0d]}
kill @e[type=armor_stand,tag=char_collision,distance=..2]
tag @s remove hasC
tag @s add colThisTick