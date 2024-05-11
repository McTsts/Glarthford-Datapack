stopsound @a * minecraft:block.chest.close

#function that copies the items into storage, plays the close sound, and removes the open tag
execute as @e[type=minecraft:area_effect_cloud,tag=echest,tag=open] at @s run function glarth.echest:main/close_as

#resetting
scoreboard players set time= echest.open 0
execute as @e[type=minecraft:area_effect_cloud,tag=echest] at @s run function glarth.echest:main/invalid