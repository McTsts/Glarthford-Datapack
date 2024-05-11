#169 Brewer | Ghast Tear to Regeneration Potion [A]
function glarth:dialogue/brewer/lines/trade7

clear @s ghast_tear 1 

scoreboard players set @e[tag=brewer,type=armor_stand] action 200
tag @e[tag=brewer,type=armor_stand] add a
tag @e[tag=brewer,type=armor_stand] add regenPotion

execute as @s[x=-50,y=31,z=-200,distance=3..] at @s unless block ~ 30 ~ minecraft:oak_slab run tp @s -50 31 -200


# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add minute Temp 10
function glarth:dialogue/delayed
tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.minecraft.potion.effect.regeneration","color":"gray","italic":true}]}]

 
 
execute as @e[tag=piglin2,tag=f,tag=!g] run function glarth:mechanic/dim_nether/piglin_move2