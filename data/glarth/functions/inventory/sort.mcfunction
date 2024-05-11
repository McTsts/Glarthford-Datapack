# Prepare
data modify storage glarth:main inv.new set from storage glarth:main inv.all
function glarth:inventory/save/slot
execute store result score count Inventory run data get storage glarth:main inv.new

# Sort
function glarth:inventory/save/sort_all

# Reset
data remove storage glarth:main inv.new