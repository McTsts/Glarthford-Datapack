execute if entity @s[type=!player,scores={tbcHealth=25..},tag=!tbcAlly] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"2.±","color":"red"}]}]
execute if entity @s[type=!player,scores={tbcHealth=15..24},tag=!tbcAlly] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"1.±","color":"red"}]}]
execute if entity @s[type=!player,scores={tbcHealth=10..14},tag=!tbcAlly] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"±.5","color":"red"}]}]
execute if entity @s[type=!player,scores={tbcHealth=..9},tag=!tbcAlly] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"±.±","color":"red"}]}]
execute if entity @s[type=!player,scores={tbcHealth=1..},tag=tbcAlly] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"1.±","color":"red"}]}]
execute if entity @s[type=player,scores={tbcHealth=3..}] run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"2.±","color":"red"}]}]
execute if entity @s[type=player,scores={tbcHealth=2}] run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"1.±","color":"red"}]}]
execute if entity @s[type=player,scores={tbcHealth=..1}] run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.poisoned","with":[{"text":"±.±","color":"red"}]}]
scoreboard players remove @s[type=!player,scores={tbcHealth=25..},tag=!tbcAlly] tbcHealth 20
scoreboard players remove @s[type=!player,scores={tbcHealth=15..24},tag=!tbcAlly] tbcHealth 10
scoreboard players remove @s[type=!player,scores={tbcHealth=10..14},tag=!tbcAlly] tbcHealth 05
scoreboard players remove @s[type=!player,scores={tbcHealth=1..},tag=tbcAlly] tbcHealth 1
scoreboard players remove @s[type=player,scores={tbcHealth=3..}] tbcHealth 2
scoreboard players remove @s[type=player,scores={tbcHealth=2}] tbcHealth 1
scoreboard players remove @s tbcPoison 1

# Sound
execute at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1