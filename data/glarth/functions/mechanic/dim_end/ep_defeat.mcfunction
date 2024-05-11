tag @e[tag=ender_priest] remove char
tag @e[tag=ender_priest] add cnoc
data merge entity @e[tag=ender_priest,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:394}}]}
execute at @e[tag=ender_priest] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:mechanic/dim_end/ep_defeat2 41t
function glarth:dialogue/ender_priest/lines/lose1
forceload add -50 -644 -47 -644
execute if entity @a[scores={playerid=3},gamemode=adventure] at @e[tag=ender_priest] run summon item ~ ~ ~ {Item:{id:"elytra",Count:1,tag:{Unbreakable:1,HideFlags:63}}}
execute if entity @a[scores={playerid=2},gamemode=adventure] at @e[tag=ender_priest] run summon item ~ ~ ~ {Item:{id:"elytra",Count:1,tag:{Unbreakable:1,HideFlags:63}}}