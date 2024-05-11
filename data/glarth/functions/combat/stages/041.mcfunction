## EP - Skeleton King
# remove
function glarth:combat/remove_all
tag @s remove stage_041

# special attacks
scoreboard players set @s attack_061 0
scoreboard players set @s attack_064 0
scoreboard players set @s attack_189 1
scoreboard players set @s attack_060 2
scoreboard players set @s attack_128 2

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/188_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack4

# Unskippable
tag @s add stage_062