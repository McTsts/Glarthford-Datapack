#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.companion.cat","color":"blue"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.companion.cat","color":"blue"}'}
scoreboard players set @s attack_010 1
scoreboard players set @s attack_011 1

#Spawn
tag @s add tbcCat
function glarth:combat/spawn