$data modify storage glarth:items temp set from storage glarth:items $(item)

$execute if data storage glarth:items temp.id if data storage glarth:items temp.count if data storage glarth:items temp.all run function glarth:items/util/give/id_multi_all with storage glarth:items $(item)
$execute if data storage glarth:items temp.id if data storage glarth:items temp.count unless data storage glarth:items temp.all run function glarth:items/util/give/id_multi with storage glarth:items $(item)
$execute if data storage glarth:items temp.id unless data storage glarth:items temp.count if data storage glarth:items temp.all run function glarth:items/util/give/id_all with storage glarth:items $(item)
$execute if data storage glarth:items temp.id unless data storage glarth:items temp.count unless data storage glarth:items temp.all run function glarth:items/util/give/id with storage glarth:items $(item)

$execute if data storage glarth:items temp.table if data storage glarth:items temp.count if data storage glarth:items temp.all run function glarth:items/util/give/table_multi_all with storage glarth:items $(item)
$execute if data storage glarth:items temp.table if data storage glarth:items temp.count if data storage glarth:items temp.all run function glarth:items/util/give/table_multi with storage glarth:items $(item)
$execute if data storage glarth:items temp.table unless data storage glarth:items temp.count if data storage glarth:items temp.all run function glarth:items/util/give/table_all with storage glarth:items $(item)
$execute if data storage glarth:items temp.table unless data storage glarth:items temp.count unless data storage glarth:items temp.all run function glarth:items/util/give/table with storage glarth:items $(item)

$execute if data storage glarth:items temp.function run function glarth:items/util/give/function with storage glarth:items $(item)