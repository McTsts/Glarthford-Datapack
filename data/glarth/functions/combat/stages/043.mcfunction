## EP - Netheran
# remove
function glarth:combat/remove_all
tag @s remove stage_043

# special attacks
scoreboard players set @s attack_041 2
scoreboard players set @s attack_046 2
scoreboard players set @s attack_134 1
scoreboard players set @s attack_136 1
scoreboard players set @s attack_179 1002

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/190_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack5

# Unskippable
tag @s add stage_062