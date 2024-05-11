# Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.groundskeeper","color":"#8C5800"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:245}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.groundskeeper\",\"color\":\"#8C5800\"}"}
scoreboard players set @s attack_084 1
scoreboard players set @s attack_085 1

scoreboard players set @s tbcHealth 30
tag @s add death_003
# Spawn
tag @s add tbcNecroGroundskeeper
function glarth:combat/spawn