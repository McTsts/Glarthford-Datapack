#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/ice
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.snow","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:373}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.snow\",\"color\":\"white\"}"}
scoreboard players set @s attack_025 1
scoreboard players set @s attack_146 2
scoreboard players set @s attack_201 2
tag @s add death_013
#Spawn
tag @s add tbcSnowGolem
function glarth:combat/spawn