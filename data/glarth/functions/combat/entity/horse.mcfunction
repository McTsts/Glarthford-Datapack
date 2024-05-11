#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.companion.horse","color":"gray"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.companion.horse","color":"gray"}'}
scoreboard players set @s attack_002 3
scoreboard players set @s attack_004 1
scoreboard players set @s attack_005 1
scoreboard players set @s attack_007 1

#Spawn
tag @s add tbcHorse
function glarth:combat/spawn