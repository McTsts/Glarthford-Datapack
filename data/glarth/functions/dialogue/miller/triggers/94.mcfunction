#94 Miller | Wheat to Flour
execute if score wind Stats matches 1 run function glarth:dialogue/miller/lines/trade1
execute if score wind Stats matches 2 run function glarth:dialogue/miller/lines/trade2
execute if score wind Stats matches 3 run function glarth:dialogue/miller/lines/trade3
tag @e[tag=miller,type=armor_stand] add a

# Animation
summon minecraft:armor_stand 19 26.1 -233.0 {Small:1b,ArmorItems:[{},{},{},{id:"wheat",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["wheat"],DisabledSlots:2039583}
clear @s minecraft:wheat 1
execute if score wind Stats matches 1 run scoreboard players set @e[tag=miller] action 2400
execute if score wind Stats matches 2 run scoreboard players set @e[tag=miller] action 1200
execute if score wind Stats matches 3 run scoreboard players set @e[tag=miller] action 400

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
execute if score wind Stats matches 1 run scoreboard players add hour Temp 2
execute if score wind Stats matches 2 run scoreboard players add hour Temp 1
execute if score wind Stats matches 3 run scoreboard players add minute Temp 20
function glarth:dialogue/delayed
 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.flour","color":"gray","italic":true}]}]

