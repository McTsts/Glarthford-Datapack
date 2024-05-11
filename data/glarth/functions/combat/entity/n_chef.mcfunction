function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.chef","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:243}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.chef\",\"color\":\"white\"}"}
scoreboard players set @s attack_080 4
scoreboard players set @s attack_081 3

scoreboard players set @s tbcStrength 30
scoreboard players set @s tbcHealth 20
tag @s add death_003
# Spawn
tag @s add tbcNecroChef
function glarth:combat/spawn