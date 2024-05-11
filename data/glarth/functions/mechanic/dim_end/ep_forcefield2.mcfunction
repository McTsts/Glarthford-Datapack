kill @e[tag=endFF]
setblock -48 90 -645 minecraft:air
data merge entity @e[tag=ender_priest,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:394}}]}
schedule function glarth:dialogue/ender_priest/lines/lose3 100t

scoreboard players set endStage Stats 1

tag @e[tag=ender_priest] add c

execute as @e[tag=endFFghast] at @s run data merge entity @s {DeathTime:19s,Health:0.0f}
kill @e[tag=endFFgas]

fill -46 90 -642 -51 93 -641 air

kill @e[type=minecraft:end_crystal]

forceload remove -50 -645 -47 -641