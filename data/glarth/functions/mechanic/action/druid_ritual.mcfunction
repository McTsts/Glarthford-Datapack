#add tag cnoc during cutscene
#particle minecraft:dripping_water ~ ~2 ~ 0.1 0.15 0.1 0.1 3 force
#particle minecraft:flame ~ ~2 ~ 0 0 0 0.01 5 force


setblock 51 38 -129 minecraft:lily_pad
setblock 53 38 -129 minecraft:lily_pad
setblock 52 38 -127 minecraft:lily_pad
setblock 52 38 -125 minecraft:lily_pad

execute if entity @s[nbt={OnGround:1b}] run scoreboard players add @s rit_time 1
tag @s[scores={rit_time=1}] add cnoc

execute if entity @s[scores={rit_time=1},nbt={OnGround:1b}] at @e[tag=druid] at @s as @a[distance=..10] at @s run playsound minecraft:creepy5 master @s ~ ~ ~ 1 1
execute if entity @s[scores={rit_time=1},nbt={OnGround:1b}] at @e[tag=druid] run function glarth:dialogue/druid/lines/ritual

execute if entity @s[scores={rit_time=1},nbt={OnGround:1b}] run data merge entity @s {Motion:[-0.45d,0.28d,0.0d],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={rit_time=1}] run particle dust 0 0.2 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=4},nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.28d,-0.45d],Rotation:[180.0f,0.0f]}
execute if entity @s[scores={rit_time=4}] run particle dust 0 0.5 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=7},nbt={OnGround:1b}] run data merge entity @s {Motion:[0.2225d,0.28d,-0.45d],Rotation:[-150.0f,0.0f]}
execute if entity @s[scores={rit_time=7}] run particle dust 0 0.2 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=10},nbt={OnGround:1b}] run data merge entity @s {Motion:[-0.45d,0.28d,0.0d],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={rit_time=10}] run particle dust 0 0.5 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=13},nbt={OnGround:1b}] run data merge entity @s {Motion:[0.2225d,0.28d,0.45d],Rotation:[-30.0f,0.0f]}
execute if entity @s[scores={rit_time=13}] run particle dust 0 0.2 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=16},nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.28d,0.45d],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={rit_time=16}] run particle dust 0 0.5 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=19},nbt={OnGround:1b}] run data merge entity @s {Motion:[0.45d,0.28d,0.0d],Rotation:[-90.0f,0.0f]}
execute if entity @s[scores={rit_time=19}] run particle dust 0 0.2 1 1 ~ ~2 ~ 0.2 0.2 0.2 0 3

execute if entity @s[scores={rit_time=22},nbt={OnGround:1b}] run data merge entity @s {Rotation:[160.0f,0.0f]}
execute if entity @s[scores={rit_time=22},nbt={OnGround:1b}] run particle minecraft:dust 1 0.1 0 1 ~ ~2 ~ 0.7 0.5 0.7 0.3 25
execute if entity @s[scores={rit_time=22},nbt={OnGround:1b}] run particle minecraft:crit 52.47 40.09 -126.83 2 2 2 0.2 50

execute if entity @s[scores={rit_time=22},nbt={OnGround:1b}] run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 10 0.5
execute if entity @s[scores={rit_time=24},nbt={OnGround:1b}] run tag @s remove cnoc
execute if entity @s[scores={rit_time=24},nbt={OnGround:1b}] run tp @s 54.5 38 -125
execute if entity @s[scores={rit_time=24..}] at @e[tag=druid] at @s if entity @p[distance=..10] run scoreboard players add tick Dis 60
execute if entity @s[scores={rit_time=24..}] at @e[tag=druid] at @s if entity @p[distance=..10] run tellraw @a[distance=..10] {"translate":"ritual","color":"gray","italic":true}
execute if entity @s[scores={rit_time=24..}] at @e[tag=druid] at @s if entity @p[distance=..10] run function glarth:mechanic/restart
execute if entity @s[scores={rit_time=24..}] at @e[tag=druid] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0.2 100
execute if entity @s[scores={rit_time=24..}] at @e[tag=druid] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 10
execute if entity @s[scores={rit_time=24..}] run kill @e[tag=druid] 