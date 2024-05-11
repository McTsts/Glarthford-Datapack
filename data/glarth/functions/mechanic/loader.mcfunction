tag @e[type=armor_stand,tag=char] add charUnload
execute as @a[gamemode=adventure] at @s run tag @e[type=armor_stand,tag=char,distance=..15] remove charUnload
execute as @e[type=armor_stand,tag=char,tag=!charUnload,tag=charUnloaded,tag=!charPermaLoad] run function glarth:mechanic/char/load
execute as @e[type=armor_stand,tag=char,tag=charUnload,tag=!charUnloaded,tag=!charPermaLoad] unless score @s action matches -2147483648.. run function glarth:mechanic/char/unload