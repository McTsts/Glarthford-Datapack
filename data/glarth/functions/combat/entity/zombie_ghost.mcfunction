#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/air
function glarth:combat/entity/implements/perma_glow
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.ghost","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:164}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.ghost\",\"color\":\"white\"}",Team:"aqua"}
execute if score difficulty tbcStats matches 1..3 run scoreboard players operation @s tbcHealth /= 2 Const
scoreboard players operation @s tbcDodge *= 7 Const
scoreboard players set @s attack_010 1
scoreboard players set @s attack_004 2
scoreboard players set @s attack_011 1
scoreboard players set @s attack_129 3
scoreboard players set @s attack_130 2
#Spawn
tag @s add tbcZombieGhost
function glarth:combat/spawn
