# Reset
function glarth:inventory/reset

# Store
data modify storage glarth:main inv.all set from entity @s Inventory
data modify storage glarth:main effect set from entity @s ActiveEffects
