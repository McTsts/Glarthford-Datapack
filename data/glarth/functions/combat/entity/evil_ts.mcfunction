#Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.evil_ts","color":"red"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:524}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.evil_ts\",\"color\":\"red\"}"}

# health
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 1500
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 1800
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 2200
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 2600
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 2800
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 3000

tag @s add stage_076
tag @s add stage_078
tag @s add death_034

tag @a remove evilPlayerSpawned

scoreboard players set @s attack_220 1005
scoreboard players set @s attack_230 1
scoreboard players set @s attack_232 3
scoreboard players set @s attack_236 3
scoreboard players set @s attack_237 3

scoreboard players add @s tbcEscape 1

scoreboard players operation @s tbcSpeed *= 3 Const
scoreboard players operation @s tbcSpeed /= 2 Const
scoreboard players set @s tbcQueue -4

# shader
effect give @a minecraft:night_vision 999999 120 true
time set 20000

#Spawn
tag @s add tbcEvilTs
function glarth:combat/spawn