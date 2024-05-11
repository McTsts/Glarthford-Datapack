#Call Parents
function glarth:combat/entity/extends/companion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.companion.pig","color":"light_purple"}'}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.companion.pig\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_005 1
scoreboard players set @s attack_007 1
scoreboard players operation @s tbcSpeed *= 2 Const

#Spawn
tag @s add tbcPig
function glarth:combat/spawn