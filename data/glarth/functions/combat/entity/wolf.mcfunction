#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.companion.wolf","color":"gray"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.companion.wolf","color":"gray"}'}
scoreboard players set @s attack_001 9
scoreboard players set @s attack_004 3
scoreboard players set @s attack_005 1
scoreboard players set @s attack_007 2

#Spawn
tag @s add tbcWolf
function glarth:combat/spawn
