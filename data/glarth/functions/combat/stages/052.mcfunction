## EP - Normal X
# remove
function glarth:combat/remove_all
tag @s remove stage_052

# standard ep attacks
scoreboard players set @s attack_165 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_195 1

# clear
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run tag @s add tbcInvisibleDeath
execute as @e[tag=!tbcBoss,tag=tbcEnemy] run function glarth:combat/kill_enemy

# stage start
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/185_init

# Stage
tag @s add tbcEnderMorphed