#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.companion.bear","color":"#8C5800"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.companion.bear","color":"#8C5800"}'}
scoreboard players set @s attack_008 1
scoreboard players set @s attack_009 1

scoreboard players operation @s tbcSpeed /= 2 Const

#Spawn
tag @s add tbcBear
function glarth:combat/spawn