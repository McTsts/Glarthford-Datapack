execute as @a[scores={rideStrider=1..}] at @s at @e[type=strider,nbt={Saddle:1b},sort=nearest,limit=1] as @e[type=strider,distance=1..] if score @s tbcCompID = @p[scores={rideStrider=1..}] playerid run scoreboard players reset @s tbcCompID
execute as @a[scores={rideStrider=1..}] at @s at @e[type=strider,nbt={Saddle:1b},sort=nearest,limit=1] run scoreboard players operation @e[type=strider,distance=..1,nbt={Saddle:1b},sort=nearest,limit=1] tbcCompID = @s playerid
scoreboard players set @a rideStrider 0


execute positioned -185 66 -173 as @e[type=strider,distance=..3] run tp @s -187 14 -221
execute positioned -183 63 -190 as @e[type=strider,distance=..3] run tp @s -187 14 -221
execute positioned -198 53 -200 as @e[type=strider,distance=..3] run tp @s -187 14 -221
execute positioned -200 53 -215 as @e[type=strider,distance=..3] run tp @s -187 14 -221

