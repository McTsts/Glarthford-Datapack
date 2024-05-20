execute as @s[type=!player] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.on_fire","with":[{"text":"1.±","color":"red"}]}]
execute as @s[type=player] unless score @s tbcFireResis matches 1.. run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.on_fire","with":[{"text":"1.±","color":"red"}]}]
execute if score @s tbcFireResis matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.on_fire_resistance","with":[{"text":"±.±","color":"red"}]}]
execute unless score @s tbcFireResis matches 1.. run scoreboard players remove @s[type=!player,tag=tbcAlly] tbcHealth 1
execute unless score @s tbcFireResis matches 1.. run scoreboard players remove @s[type=!player,tag=!tbcAlly] tbcHealth 10
execute unless score @s tbcFireResis matches 1.. run scoreboard players remove @s[type=player] tbcHealth 1
execute unless score @s tbcFireResis matches 1.. at @s run playsound minecraft:entity.player.hurt master @s ~ ~ ~ 1 1
scoreboard players remove @s tbcFire 1
execute if score @s tbcFireResis matches 1.. run scoreboard players remove @s tbcFireResis 1