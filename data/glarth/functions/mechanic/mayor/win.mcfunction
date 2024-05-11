execute as @e[tag=mayor,type=armor_stand,tag=!c] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:37}
execute at @e[tag=mayor,type=armor_stand,tag=!c] run summon minecraft:item 9.8 27.1 -181.0 {Item:{id:"diamond_hoe",Count:1,tag:{Unbreakable:1,CustomModelData:38,HideFlags:63,custom:"tophat",display:{Name:'{"translate":"item.tophat","italic":false}',Lore:['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.damage","color":"dark_green","italic":false,"with":[{"translate":"tbc.attack.msg.name.damage.high"}]}]','[" ",{"translate":"tbc.attack.msg.name.reuseable","color":"dark_green","italic":false}]']}}},Motion:[0.15,0.0,0.5]}
execute at @e[tag=mayor,type=armor_stand,tag=!c] run scoreboard players set mayorHatless Stats 1
execute at @e[tag=mayor,type=armor_stand,tag=!c] run function glarth:dialogue/mayor/lines/board4
execute at @e[tag=mayor,type=armor_stand,tag=c] run function glarth:dialogue/mayor/lines/board5
tag @e[tag=mayor,type=armor_stand] add c
function glarth:mechanic/mayor/end