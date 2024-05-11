execute as @e[tag=sleep,type=armor_stand] run function glarth:mechanic/char/sleep
execute as @e[tag=!sleep,scores={Sleep=1..},type=armor_stand] run function glarth:mechanic/char/sleep
execute as @e[tag=zzz,type=armor_stand] at @s run tp @s ~ ~0.01 ~
execute as @e[tag=char_msg,type=armor_stand] at @s run tp @s ~ ~0.01 ~
scoreboard players add @e[tag=char_msg,type=armor_stand] msg 1
kill @e[tag=char_msg,scores={msg=20..},type=armor_stand]

execute as @e[tag=char_look,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[distance=..7,gamemode=adventure]

execute as @a at @s run tag @e[tag=char,type=armor_stand,distance=..20,tag=!charNoAnim,tag=!sleep] add charAnimated
execute as @e[tag=char,type=armor_stand,tag=charAnimated] run function glarth:mechanic/char/animated