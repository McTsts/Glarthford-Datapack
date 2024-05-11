#Call Parents
function glarth:combat/entity/extends/illager_bannerman
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.bannerman.pillager","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:269}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.bannerman.pillager\",\"color\":\"gray\"}"}


scoreboard players set @s attack_244 1
scoreboard players set @s attack_013 1
scoreboard players set @s attack_094 2
scoreboard players set @s attack_100 2
scoreboard players set @s attack_143 6
#Spawn
tag @s add tbcPillagerBannerman
function glarth:combat/spawn