## EP - Roberto Rizzo
# remove
function glarth:combat/remove_all
tag @s remove stage_037

# special attacks
scoreboard players set @s attack_016 1
scoreboard players set @s attack_017 1
scoreboard players set @s attack_019 2
scoreboard players set @s attack_180 2
scoreboard players set @s attack_007 2
scoreboard players set @s attack_140 2
scoreboard players set @s attack_142 2

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/184_init

# Stage
tag @s remove tbcEnderMorphed

# Dialogue
function glarth:dialogue/ender_priest/lines/attack2

# Unskippable
tag @s add stage_062