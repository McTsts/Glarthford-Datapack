#Call Parents
function glarth:combat/entity/extends/illager_bannerman
function glarth:combat/entity/implements/type/illusion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.bannerman.illusioner","color":"blue"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:270}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.bannerman.illusioner\",\"color\":\"blue\"}"}

# Illusioner Attacks
scoreboard players set @s attack_019 1
scoreboard players set @s attack_099 3

# Change Illager Attacks
scoreboard players set @s attack_092 0
scoreboard players set @s attack_104 0

# Illusioner Bannerman Attacks
scoreboard players set @s attack_102 6
scoreboard players set @s attack_103 1


#Spawn
tag @s add tbcIllusionerBannerman
function glarth:combat/spawn