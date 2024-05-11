#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/type/ender
function glarth:combat/entity/implements/nerf/3
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:30}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.ender_priest\",\"color\":\"dark_purple\"}"}

# Custom Attack
scoreboard players set @s attack_160 2
scoreboard players set @s attack_161 2
scoreboard players set @s attack_165 2

# Ender Attacks
scoreboard players set @s attack_119 1
scoreboard players set @s attack_120 1
scoreboard players set @s attack_121 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_156 1

# Strength
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcStrength 40
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 50
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcStrength 60
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 70
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcStrength 80

# Escape
scoreboard players add @s tbcEscape 3

# Stages
tag @s add stage_027
tag @s add stage_028
tag @s add stage_029
tag @s add stage_030
tag @s add stage_031

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 1000
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 1300
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 1500
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 1800
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 2200
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 3000

execute if score lobbyTBC Stats matches 2 run tag @s add death_035
#Spawn
tag @s add tbcEnderPriest1
tag @s add tbcEnderPriest
function glarth:combat/spawn