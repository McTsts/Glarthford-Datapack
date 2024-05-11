# Break Animation
execute at @s run particle block soul_sand ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_205 15
scoreboard players operation @e[tag=tbcBoss] attack_205 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_206 0

# Revert Stage
tag @s remove stage_057
tag @s add stage_056
tag @s remove death_027
tag @s add death_026
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":493}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.wither","color":"dark_gray"}'}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 90
scoreboard players set @s tbcHealth 90

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem