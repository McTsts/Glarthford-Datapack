## EP - Vishnold
# remove
function glarth:combat/remove_all
tag @s remove stage_045

# special attacks
scoreboard players set @s attack_182 1
scoreboard players set @s attack_049 2
scoreboard players set @s attack_054 2

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/191_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack6

# Unskippable
tag @s add stage_062