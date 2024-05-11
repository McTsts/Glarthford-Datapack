execute store result score anger Temp run data get entity @e[type=polar_bear,limit=1,sort=nearest] AngerTime

execute if score anger Temp matches 0 run tag @e[type=polar_bear,limit=1,sort=nearest] add bearTamed
execute if score anger Temp matches 0 at @e[type=polar_bear,limit=1,sort=nearest] run particle heart ~ ~ ~ 0.65 0.65 0.65 0 10
execute if score anger Temp matches 0 at @e[type=polar_bear,limit=1,sort=nearest] run kill @e[type=item,nbt={Item:{id:"minecraft:cod"}},distance=..10]
execute if score anger Temp matches 0 run data merge entity @e[type=polar_bear,limit=1,sort=nearest] {Invulnerable:1}
execute if score anger Temp matches 0 run scoreboard players operation @e[type=polar_bear,limit=1,sort=nearest] tbcCompID = @s playerid
execute if score anger Temp matches 0 run playsound minecraft:entity.polar_bear.ambient master @s ~ ~ ~ 1 2 1
execute if score anger Temp matches 0 run playsound minecraft:entity.polar_bear.ambient master @s ~ ~ ~ 1 2 1
execute if score anger Temp matches 0 run playsound minecraft:entity.polar_bear.ambient master @s ~ ~ ~ 1 2 1