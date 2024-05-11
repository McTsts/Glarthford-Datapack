#Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/immortal
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"text":"E. Ts","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:1}}],CustomNameVisible:1,CustomName:"{\"translate\":\"Evil Ts\",\"color\":\"green\"}"}
scoreboard players add @s tbcDodge 0
scoreboard players add @s tbcArmor 0

#Spawn
tag @s add tbcDebug
tag @s add tbcEvilTs
function glarth:combat/spawn