execute as @e[tag=charQ6,type=armor_stand] at @s run function glarth:combat/head_setup_once

data merge block 84 26 -123 {Text1:'{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@a[scores={playerid=1},gamemode=adventure]","interpret":true}'}
data modify entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS1] CustomName set from block 84 26 -123 Text1
data merge block 84 26 -123 {Text1:'{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@a[scores={playerid=2},gamemode=adventure]","interpret":true}'}
data modify entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS2] CustomName set from block 84 26 -123 Text1
data merge block 84 26 -123 {Text1:'{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@a[scores={playerid=3},gamemode=adventure]","interpret":true}'}
data modify entity @e[type=armor_stand,limit=1,tag=tbcPlayerAS3] CustomName set from block 84 26 -123 Text1

execute as @a[scores={playerid=1},gamemode=adventure] at @e[tag=tbcPlayerAS1] run function glarth:mechanic/make_char
execute as @a[scores={playerid=2},gamemode=adventure] at @e[tag=tbcPlayerAS2] run function glarth:mechanic/make_char
execute as @a[scores={playerid=3},gamemode=adventure] at @e[tag=tbcPlayerAS3] run function glarth:mechanic/make_char

execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=adventure,distance=..5] run spectate @r[gamemode=adventure] @s 