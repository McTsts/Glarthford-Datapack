#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/air
function glarth:combat/entity/implements/perma_glow
function glarth:combat/entity/implements/tall
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.ghost_mayor","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:521}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.ghost_mayor\",\"color\":\"white\"}",Team:"aqua"}
scoreboard players operation @s tbcDodge *= 10 Const
execute unless score difficulty tbcStats matches 1..3 run scoreboard players operation @s tbcHealth *= 2 Const
scoreboard players set @s attack_010 1
scoreboard players set @s attack_004 2
scoreboard players set @s attack_011 1
scoreboard players set @s attack_216 3
scoreboard players set @s attack_217 2
#Spawn
tag @s add tbcZombieGhost
tag @s add tbcZombieGhostMayor
function glarth:combat/spawn
