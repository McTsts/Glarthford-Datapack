#Call Parents
function glarth:combat/entity/extends/illager_bannerman
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.bannerman.vindicator","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:271}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.bannerman.vindicator\",\"color\":\"gray\"}"}


scoreboard players set @s attack_095 2
scoreboard players set @s attack_096 2
scoreboard players set @s attack_097 2
scoreboard players set @s attack_101 2
scoreboard players set @s attack_143 6

#Spawn
tag @s add tbcVindicatorBannerman
function glarth:combat/spawn