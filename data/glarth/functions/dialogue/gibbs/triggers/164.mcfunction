#164 Gibbs | Tooth to Bee Staff
execute unless entity @e[tag=gibbs,tag=gibbs_time] run function glarth:dialogue/gibbs/lines/trade1
execute unless entity @a[tag=seenGaryHideout,distance=..5,gamemode=adventure] if entity @e[tag=gibbs,tag=gibbs_time] run function glarth:dialogue/gibbs/lines/trade1b
execute if entity @a[tag=seenGaryHideout,distance=..5,gamemode=adventure] if entity @e[tag=gibbs,tag=gibbs_time] run function glarth:dialogue/gibbs/lines/trade1c
execute if entity @a[tag=seenGaryHideout,distance=..5,gamemode=adventure] if entity @e[tag=gibbs,tag=gibbs_time] run function glarth:dialogue/gibbs/trades/quickfast
execute if entity @a[tag=seenGaryHideout,distance=..5,gamemode=adventure] if entity @e[tag=gibbs,tag=gibbs_time] run tag @e[tag=gibbs,type=armor_stand] add b
function glarth:items/util/give {item:"trades.gary.1"} 
function glarth:mechanic/staff/get_bee
tag @e[tag=gibbs,type=armor_stand] add a