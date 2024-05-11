tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"item.minecraft.golden_apple","bold":true}]}]
scoreboard players add @s tbcHealth 120
tag @s add tbcSkipThis
tag @s remove stage_074