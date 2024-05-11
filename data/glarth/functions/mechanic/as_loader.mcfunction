tag @e[type=#glarth:as_loader,tag=asLoader,tag=!asLoaderFar,tag=!asLoaderOverwrite] add asUnload
tag @e[type=#glarth:as_loader,tag=asLoader,tag=asLoaderFar,tag=!asLoaderOverwrite] add asUnload
execute as @a[gamemode=adventure] at @s run tag @e[type=#glarth:as_loader,tag=asLoader,tag=!asLoaderFar,distance=..32] remove asUnload
execute as @a[gamemode=adventure] at @s run tag @e[type=#glarth:as_loader,tag=asLoader,tag=asLoaderFar,distance=..64] remove asUnload
execute as @a[gamemode=adventure] at @s positioned ~ ~1000 ~ run tag @e[type=#glarth:as_loader,tag=asLoader,tag=!asLoaderFar,distance=..32] remove asUnload
execute as @a[gamemode=adventure] at @s positioned ~ ~1000 ~ run tag @e[type=#glarth:as_loader,tag=asLoader,tag=asLoaderFar,distance=..64] remove asUnload
execute as @e[type=#glarth:as_loader,tag=asLoader,tag=!asUnload,tag=asUnloaded] run function glarth:mechanic/as_load
execute as @e[type=#glarth:as_loader,tag=asLoader,tag=asUnload,tag=!asUnloaded] run function glarth:mechanic/as_unload

# this removes items such as assassin drops
#execute as @e[type=item] at @s unless entity @a[gamemode=adventure,distance=..15] unless data entity @s Thrower run kill @s