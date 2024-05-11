function glarth:team/reset
data modify storage 0fix:main prefix set from storage 0fix:main prefix_c
data modify storage 0fix:main suffix set from storage 0fix:main suffix_c

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[0]
function glarth:team/prefix

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[1]
function glarth:team/prefix

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[2]
function glarth:team/prefix

execute store result score length Temp run data get entity @s EnderItems[{Slot:2b}].tag.length
execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[5]
scoreboard players operation length Temp -= pos Temp
scoreboard players operation pos Temp = length Temp
scoreboard players remove pos Temp 5
function glarth:team/suffix

execute store result score length Temp run data get entity @s EnderItems[{Slot:2b}].tag.length
execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[4]
scoreboard players operation length Temp -= pos Temp
scoreboard players operation pos Temp = length Temp
scoreboard players remove pos Temp 5
function glarth:team/suffix

execute store result score length Temp run data get entity @s EnderItems[{Slot:2b}].tag.length
execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[3]
scoreboard players operation length Temp -= pos Temp
scoreboard players operation pos Temp = length Temp
scoreboard players remove pos Temp 5
function glarth:team/suffix

function glarth:team/select
