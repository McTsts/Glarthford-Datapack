data modify storage glarth:main invget.temp set from storage glarth:main inv.all
data modify storage glarth:main invget.out set value {id:"minecraft:air"}
execute if data storage glarth:main invget.temp[0] run function glarth:inventory/get_recursive
data remove storage glarth:main invget.temp
data remove storage glarth:main invget.temp2