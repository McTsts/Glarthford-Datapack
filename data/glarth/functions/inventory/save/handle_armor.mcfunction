execute store result storage glarth:main inv.new[0].Slot byte 1 run scoreboard players remove slot Inventory 100

data modify storage glarth:main inv.armor append from storage glarth:main inv.new[0]
data remove storage glarth:main inv.new[0]

function glarth:inventory/save/slot
execute if data storage glarth:main inv.new[0] run function glarth:inventory/save/sort_all