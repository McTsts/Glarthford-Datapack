# Kill Allies
execute as @e[tag=tbcEnemy,tag=!tbcBoss,tag=!tbcStrIronGolem,tag=!tbcIronGolem] run function glarth:combat/kill_enemy

# Size
execute if score @s tbcTOU matches 2 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=384]
execute if score @s tbcTOU matches 1 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=287]

# New Default Attack Weights
function glarth:combat/remove_all
scoreboard players set @s attack_017 1
scoreboard players set @s attack_104 1
execute unless entity @e[tag=tbcStrIronGolem] unless entity @e[tag=tbcIronGolem] run scoreboard players set @s attack_147 10

# New Attacks
scoreboard players set @s attack_113 1
scoreboard players set @s attack_004 1

# No Summonings
scoreboard players set @s attack_100 0
scoreboard players set @s attack_101 0
scoreboard players set @s attack_126 0
scoreboard players set @s attack_127 0

# Angry
scoreboard players add @s tbcSpeed 9
scoreboard players set @s tbcArmor 0