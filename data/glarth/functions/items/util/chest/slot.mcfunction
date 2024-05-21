# prepare storage object and set slot for macros
$execute unless data storage glarth:items temp.slot_$(slot) run data modify storage glarth:items temp.slot_$(slot) set value {table:"glarth:empty"}
$data modify storage glarth:items temp.slot_$(slot).slot set value $(slot)

# get total player count
$execute store result storage glarth:items temp.slot_$(slot).total int 1 run scoreboard players get chestPlayers Temp
$execute if data storage glarth:items temp.slot_$(slot).count run function glarth:items/util/chest/multiply_count with storage glarth:items temp.slot_$(slot)

# translate to sub loot table
$execute if data storage glarth:items temp.slot_$(slot).id if data storage glarth:items temp.slot_$(slot).count if data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/id_multi_all with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).id if data storage glarth:items temp.slot_$(slot).count unless data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/id_multi with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).id unless data storage glarth:items temp.slot_$(slot).count if data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/id_all with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).id unless data storage glarth:items temp.slot_$(slot).count unless data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/id with storage glarth:items temp.slot_$(slot)

$execute if data storage glarth:items temp.slot_$(slot).table if data storage glarth:items temp.slot_$(slot).count if data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/table_multi_all with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).table if data storage glarth:items temp.slot_$(slot).count unless data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/table_multi with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).table unless data storage glarth:items temp.slot_$(slot).count if data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/table_all with storage glarth:items temp.slot_$(slot)
$execute if data storage glarth:items temp.slot_$(slot).table unless data storage glarth:items temp.slot_$(slot).count unless data storage glarth:items temp.slot_$(slot).all run function glarth:items/util/chest/table with storage glarth:items temp.slot_$(slot)

$execute if data storage glarth:items temp.slot_$(slot).function run function glarth:items/util/chest/function with storage glarth:items temp.slot_$(slot)
