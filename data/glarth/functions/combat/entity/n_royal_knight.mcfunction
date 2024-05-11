# Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.royal_knight","color":"gold"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:237}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.royal_knight\",\"color\":\"gold\"}"}
scoreboard players set @s attack_073 1
scoreboard players set @s attack_074 1
scoreboard players set @s attack_075 1

scoreboard players set @s tbcHealth 50
scoreboard players set @s tbcDodge 0
scoreboard players set @s tbcArmor 10
tag @s add death_003
#Spawn
tag @s add tbcNecroRoyalKnight
function glarth:combat/spawn