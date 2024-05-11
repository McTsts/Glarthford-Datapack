#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.companion.strider","color":"red"}'}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.companion.strider\",\"color\":\"red\"}"}
scoreboard players set @s attack_003 2
scoreboard players set @s attack_006 1
scoreboard players set @s attack_004 1
scoreboard players set @s attack_007 1

#Spawn
tag @s add tbcStrider
function glarth:combat/spawn