execute if entity @e[tag=tbcIllusionerFake] run scoreboard players set @s tbcAttack 99
execute if entity @e[tag=tbcIllusionerFake] run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.99","bold":true}]}]
execute if entity @e[tag=tbcIllusionerFake] run function glarth:combat/attack_init
execute unless entity @e[tag=tbcIllusionerFake] run function glarth:combat/attack
