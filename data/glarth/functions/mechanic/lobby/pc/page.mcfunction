# Header
data modify entity @e[type=armor_stand,tag=lobbyScreenB,limit=1] ArmorItems[3].tag.CustomModelData set value 0
execute if score page pcData matches 0 run data modify entity @e[type=armor_stand,tag=lobbyScreenB,limit=1] ArmorItems[3].tag.CustomModelData set value 1
execute if score page pcData matches 1 run data modify entity @e[type=armor_stand,tag=lobbyScreenB,limit=1] ArmorItems[3].tag.CustomModelData set value 2
execute if score page pcData matches 2 run data modify entity @e[type=armor_stand,tag=lobbyScreenB,limit=1] ArmorItems[3].tag.CustomModelData set value 3

# Home, Maps, About
execute if score page pcData matches 0 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 10
execute if score page pcData matches 1 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 1
execute if score page pcData matches 2 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 9

# Isle, SN, TR, HR, Bitdepth, OU
execute if score page pcData matches 3 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 11
execute if score page pcData matches 4 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 12
execute if score page pcData matches 5 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 13
execute if score page pcData matches 6 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 14
execute if score page pcData matches 7 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 15
execute if score page pcData matches 8 as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].tag.Damage set value 16

scoreboard players set height pcScroll 0
function glarth:mechanic/lobby/pc/scroll