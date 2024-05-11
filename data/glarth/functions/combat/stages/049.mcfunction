## EP - Grimsbane
# remove
function glarth:combat/remove_all
tag @s remove stage_049

# special attacks
scoreboard players set @s attack_036 2
scoreboard players set @s attack_178 1002
scoreboard players set @s attack_183 2

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/193_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack8

# Unskippable
tag @s add stage_062