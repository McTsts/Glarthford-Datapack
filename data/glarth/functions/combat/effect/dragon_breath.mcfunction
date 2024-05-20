tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dragon_breath","with":[{"text":"1.±","color":"red"}]}]
scoreboard players remove @s tbcHealth 1
execute at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1.8
# Sound
execute at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1