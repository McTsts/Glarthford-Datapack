#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/speed/double
function glarth:combat/entity/implements/type/default
#Overwrite
scoreboard players set @s attack_004 2
scoreboard players set @s attack_005 2
scoreboard players set @s attack_006 2
scoreboard players set @s attack_007 2
scoreboard players set @s attack_131 1
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.baby","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":279}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.baby","color":"dark_green"}'}
#Spawn
tag @s add tbcZombieBaby
function glarth:combat/spawn