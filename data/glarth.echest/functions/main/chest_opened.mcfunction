#playing ender chest sound
playsound minecraft:block.ender_chest.open block @a ~ ~1 ~ 1 1 0

#tagging opened ender chest
tag @e[type=minecraft:area_effect_cloud,tag=echest,limit=1,sort=nearest] add open

#copying items from storage
data modify block ~ ~1 ~ Items set from storage echest:main Items 

#locking all ender chests
execute as @e[type=minecraft:area_effect_cloud,tag=echest] at @s run data merge block ~ ~ ~ {Lock:"a"}

#changing impulse command block into repeating command block that runs open loop
execute positioned ~ ~ ~ run function glarth.echest:main/place_rcb
data merge block ~ ~ ~ {Command:"scoreboard players add time= echest.open 1",auto:1b}
schedule function glarth.echest:main/update 1t

#adding to time score so chest doesn't close before loop command block starts running
scoreboard players add time= echest.open 1