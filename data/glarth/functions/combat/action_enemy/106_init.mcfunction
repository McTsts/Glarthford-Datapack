scoreboard players set @s tbcAttack 106
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.106","bold":true}]}]
function glarth:combat/attack_init

# Enable Phanterra, Disable this (phanterra invocation)
scoreboard players set @s attack_106 0
scoreboard players set @s attack_107 1016
scoreboard players set @s attack_108 1016
scoreboard players set @s attack_109 1008
scoreboard players set @s attack_218 1016
scoreboard players set @s attack_219 1008
scoreboard players set @s attack_110 12

# Summoning
scoreboard players set @s attack_65 12
scoreboard players set @s attack_66 8

# Default Attacks
scoreboard players set @s attack_017 4
scoreboard players set @s attack_059 4
scoreboard players set @s attack_054 4
scoreboard players set @s attack_042 4
scoreboard players set @s attack_038 4
scoreboard players set @s attack_012 4
scoreboard players set @s attack_065 4
scoreboard players set @s attack_066 4
scoreboard players set @s attack_093 4

# Attack Again
scoreboard players set @s tbcQueue 1000