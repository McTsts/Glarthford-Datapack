item replace entity @e[tag=creeper,type=armor_stand] armor.head with diamond_hoe{Damage:147}
data modify entity @e[tag=creeper,type=armor_stand,limit=1] ArmorItems[0] set from entity @e[tag=creeper,type=armor_stand,limit=1] ArmorItems[3]
tag @e[tag=creeper,type=armor_stand] remove charged_creeper
tag @e[tag=events,type=area_effect_cloud] remove evCreeperStruck