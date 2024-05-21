# get data
$data modify storage glarth:items temp set from storage glarth:items $(items)

# reset block
data remove block ~ ~ ~ Items

# get total players
scoreboard players set chestPlayers Temp 0
execute as @a[gamemode=adventure] run scoreboard players add chestPlayers Temp 1
tellraw @a ["Chest Players: ",{"score":{"name":"chestPlayers","objective":"Temp"}}]

# handle slots
function glarth:items/util/chest/slot {slot:"0"}
function glarth:items/util/chest/slot {slot:"1"}
function glarth:items/util/chest/slot {slot:"2"}
function glarth:items/util/chest/slot {slot:"3"}
function glarth:items/util/chest/slot {slot:"4"}
function glarth:items/util/chest/slot {slot:"5"}
function glarth:items/util/chest/slot {slot:"6"}
function glarth:items/util/chest/slot {slot:"7"}
function glarth:items/util/chest/slot {slot:"8"}
function glarth:items/util/chest/slot {slot:"9"}
function glarth:items/util/chest/slot {slot:"10"}
function glarth:items/util/chest/slot {slot:"11"}
function glarth:items/util/chest/slot {slot:"12"}
function glarth:items/util/chest/slot {slot:"13"}
function glarth:items/util/chest/slot {slot:"14"}
function glarth:items/util/chest/slot {slot:"15"}
function glarth:items/util/chest/slot {slot:"16"}
function glarth:items/util/chest/slot {slot:"17"}
function glarth:items/util/chest/slot {slot:"18"}
function glarth:items/util/chest/slot {slot:"19"}
function glarth:items/util/chest/slot {slot:"20"}
function glarth:items/util/chest/slot {slot:"21"}
function glarth:items/util/chest/slot {slot:"22"}
function glarth:items/util/chest/slot {slot:"23"}
function glarth:items/util/chest/slot {slot:"24"}
function glarth:items/util/chest/slot {slot:"25"}
function glarth:items/util/chest/slot {slot:"26"}