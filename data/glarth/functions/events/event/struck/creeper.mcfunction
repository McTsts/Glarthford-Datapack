item replace entity @e[tag=creeper,type=armor_stand] armor.head with diamond_hoe{CustomModelData:47}
item replace entity @e[tag=creeper,type=armor_stand] armor.feet with diamond_hoe{CustomModelData:47}
tag @e[tag=creeper,type=armor_stand] add charged_creeper
execute at @e[tag=creeper,type=armor_stand] unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt ~ ~ ~ 
tag @e[tag=events,type=area_effect_cloud] add evCreeperStruck