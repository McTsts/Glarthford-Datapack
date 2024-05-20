execute if score enemies tbcStats matches ..2 run scoreboard players set @s tbcAttack 100
execute if score enemies tbcStats matches ..2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.100","bold":true}]}]
execute if score enemies tbcStats matches ..2 run scoreboard players remove @s[tag=tbcRaidLeader] attack_100 1
execute if score enemies tbcStats matches ..2 if entity @s[tag=tbcRaidLeader] run function glarth:dialogue/raid_leader/lines/attack2
execute if score enemies tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 3.. run function glarth:combat/attack
