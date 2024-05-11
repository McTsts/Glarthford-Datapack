## EP - Necromancer
# remove
function glarth:combat/remove_all
tag @s remove stage_051

# special attacks
scoreboard players set @s attack_078 1
scoreboard players set @s attack_076 1
scoreboard players set @s attack_176 1
scoreboard players set @s attack_177 1002

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/194_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack9

# Unskippable
tag @s add stage_062