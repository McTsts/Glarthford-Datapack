# Necromancer Monster Phase
tag @s remove stage_013

# Disable Healing
scoreboard players set @s attack_079 0

# Disable Sword Attack
scoreboard players set @s attack_086 0
scoreboard players set @s attack_087 0

# Enable Beast
scoreboard players set @s attack_089 1

# Kill Allies
execute as @e[tag=tbcEnemy,tag=!tbcBoss] run function glarth:combat/die_enemy