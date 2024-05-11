tag @e[tag=ender_priest] remove char
tag @e[tag=ender_priest] add cnoc
data merge entity @e[tag=ender_priest,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":394}}]}
execute at @e[tag=ender_priest] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:mechanic/dim_end/ep_defeat2 41t
function glarth:dialogue/ender_priest/lines/lose1
forceload add -50 -644 -47 -644
forceload add -84 -600
forceload add -20 -609
execute if entity @a[scores={playerid=3},gamemode=adventure] at @e[tag=ender_priest] run summon item ~ ~ ~ {Item:{id:"elytra",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:hide_additional_tooltip":{}}}}
execute if entity @a[scores={playerid=2},gamemode=adventure] at @e[tag=ender_priest] run summon item ~ ~ ~ {Item:{id:"elytra",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:hide_additional_tooltip":{}}}}
