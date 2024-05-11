execute store result score zeroes Temp run data get entity @s EnderItems[{Slot:2b}].tag.name
execute if score zeroes Temp matches 0 run function glarth:team/handle/0
execute if score zeroes Temp matches 1 run function glarth:team/handle/1
execute if score zeroes Temp matches 2 run function glarth:team/handle/2
execute if score zeroes Temp matches 3 run function glarth:team/handle/3
execute if score zeroes Temp matches 4 run function glarth:team/handle/4
execute if score zeroes Temp matches 5 run function glarth:team/handle/5
execute if score zeroes Temp matches 6 run function glarth:team/handle/6

execute if score zeroes Temp matches 7.. run function glarth:team/handle/7

function glarth:team/join/player