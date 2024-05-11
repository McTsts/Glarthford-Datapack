function glarth:team/reset
data modify storage 0fix:main prefix set from storage 0fix:main prefix_c

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[0]
function glarth:team/prefix

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[1]
function glarth:team/prefix

execute store result score pos Temp run data get entity @s EnderItems[{Slot:2b}].tag.name[2]
function glarth:team/prefix

function glarth:team/select
