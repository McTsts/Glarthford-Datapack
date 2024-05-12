$data modify storage glarth:items temp set from storage glarth:items $(item)
$execute if data storage glarth:items temp.id run function glarth:items/util/give_id with storage glarth:items $(item)
$execute if data storage glarth:items temp.table run function glarth:items/util/give_table with storage glarth:items $(item)