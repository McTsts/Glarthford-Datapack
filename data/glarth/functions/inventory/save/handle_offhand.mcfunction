execute store result storage glarth:main inv.new[0].Slot byte 1 run scoreboard players add slot Inventory 106

data modify storage glarth:main inv.offhand append from storage glarth:main inv.new[0]
data remove storage glarth:main inv.new[0]

function glarth:inventory/save/slot
execute if data storage glarth:main inv.new[0] run function glarth:inventory/save/sort_all