execute as @e[tag=mayor,type=armor_stand,tag=!c] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=37]
execute at @e[tag=mayor,type=armor_stand,tag=!c] run summon minecraft:item 9.8 27.1 -181.0 {Item:{id:"diamond_hoe",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":38,"minecraft:custom_name":'{"translate":"item.tophat","italic":false}',"minecraft:lore":['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.damage","color":"dark_green","italic":false,"with":[{"translate":"tbc.attack.msg.name.damage.high"}]}]','[" ",{"translate":"tbc.attack.msg.name.reuseable","color":"dark_green","italic":false}]'],"minecraft:hide_additional_tooltip":{},"minecraft:custom_data":{custom:"tophat"}}},Motion:[0.15d,0.0d,0.5d]}
execute at @e[tag=mayor,type=armor_stand,tag=!c] run scoreboard players set mayorHatless Stats 1
execute at @e[tag=mayor,type=armor_stand,tag=!c] run function glarth:dialogue/mayor/lines/board4
execute at @e[tag=mayor,type=armor_stand,tag=c] run function glarth:dialogue/mayor/lines/board5
tag @e[tag=mayor,type=armor_stand] add c
function glarth:mechanic/mayor/end