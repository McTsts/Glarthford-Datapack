## EP - Raid Captain
# remove
function glarth:combat/remove_all
tag @s remove stage_039

# special attacks
scoreboard players set @s attack_094 2
scoreboard players set @s attack_093 2
scoreboard players set @s attack_097 2
scoreboard players set @s attack_100 1
scoreboard players set @s attack_101 1

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/186_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack3

# Unskippable
tag @s add stage_062