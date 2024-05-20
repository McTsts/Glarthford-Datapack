execute as @e[tag=mayor,type=armor_stand,tag=!c] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=37]
execute at @e[tag=mayor,type=armor_stand,tag=!c] positioned 9.8 27.1 -181.0 run function glarth:items/util/summon {item:"misc.mayor.1"}
execute at @e[tag=mayor,type=armor_stand,tag=!c] positioned 9.8 27.1 -181.0 run data merge entity @e[type=item,distance=..0.1,limit=1] {Motion:[0.15d,0.0d,0.5d]}
execute at @e[tag=mayor,type=armor_stand,tag=!c] run scoreboard players set mayorHatless Stats 1
execute at @e[tag=mayor,type=armor_stand,tag=!c] run function glarth:dialogue/mayor/lines/board4
execute at @e[tag=mayor,type=armor_stand,tag=c] run function glarth:dialogue/mayor/lines/board5
tag @e[tag=mayor,type=armor_stand] add c
function glarth:mechanic/mayor/end