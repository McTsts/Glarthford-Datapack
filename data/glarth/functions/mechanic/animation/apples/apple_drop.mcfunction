# drop item
playsound minecraft:entity.item.pickup block @a ~ ~-0.3 ~ 1 0.7
particle item apple ~ ~-0.3 ~ 0.1 0.1 0.1 0.1 10
summon item ~ ~-0.3 ~ {Item:{id:"apple",Count:1},Motion:[0.0,0.05,0.0]}
# kill
scoreboard players operation #apl appleid = @s appleid 
execute as @e[type=armor_stand,tag=applelanded,distance=..5] if score @s appleid = #apl appleid run kill @s
data merge entity @s {Health:0.0f,DeathTime:19s,Pos:[0.0,0.0,0.0],Size:0}
tag @s add appleSlimeDead
tag @s remove appleSlime