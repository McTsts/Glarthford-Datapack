## EP - Piglins
# remove
function glarth:combat/remove_all
tag @s remove stage_047

# special attacks
scoreboard players set @s attack_014 2
scoreboard players set @s attack_209 2
scoreboard players set @s attack_210 2
scoreboard players set @s attack_211 1

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/192_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack7

# Unskippable
tag @s add stage_062