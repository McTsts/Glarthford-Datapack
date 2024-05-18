#117 Brewer | Take Potion
function glarth:dialogue/brewer/lines/trade5

# Swiftness (Default)
execute if score quest Stats matches 4 run function glarth:items/util/give {item:"trades.brewer.1"} 
execute if score quest Stats matches 5 run function glarth:items/util/give {item:"trades.brewer.1"} 
execute if score quest Stats matches 6 run function glarth:items/util/give {item:"trades.brewer.1"} 
execute if score quest Stats matches 9 run function glarth:items/util/give {item:"trades.brewer.1"} 
execute if score quest Stats matches 10 run function glarth:items/util/give {item:"trades.brewer.1"} 
execute if score quest Stats matches 11 run function glarth:items/util/give {item:"trades.brewer.1"} 

# Jump (Mines)
execute if score quest Stats matches 1 run function glarth:items/util/give {item:"trades.brewer.2"} 
execute if score quest Stats matches 2 run function glarth:items/util/give {item:"trades.brewer.2"} 

# Fire Resistance (Nether)
execute if score quest Stats matches 3 unless entity @e[tag=brewer,tag=tripleFireRes] run function glarth:items/util/give {item:"trades.brewer.3"} 
execute if score quest Stats matches 3 if entity @e[tag=brewer,tag=tripleFireRes] run function glarth:items/util/give {item:"trades.brewer.4"} 

execute if score quest Stats matches 8 unless entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone,tag=!tripleFireRes] run function glarth:items/util/give {item:"trades.brewer.3"} 
execute if score quest Stats matches 8 unless entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone,tag=tripleFireRes] run function glarth:items/util/give {item:"trades.brewer.4"} 

tag @e[tag=brewer,type=armor_stand] remove tripleFireRes

# Regeneration (Piglins)
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run function glarth:items/util/give {item:"trades.brewer.5"} 
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run function glarth:mechanic/dim_nether/piglin_move3
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run tag @e[tag=brewer,type=armor_stand] add regenPotionDone

# Energizing (Ruins of Ascension)
execute if score quest Stats matches 7 run function glarth:items/util/give {item:"trades.brewer.6"} 


tag @e[tag=brewer,type=armor_stand] remove a
tag @e[tag=brewer,type=armor_stand] remove b