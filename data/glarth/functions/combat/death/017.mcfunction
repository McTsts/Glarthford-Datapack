# Break Animation
execute at @s run particle block{block_state:{Name:"iron_block"}} ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_150 15
scoreboard players operation @e[tag=tbcBoss] attack_150 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_151 0

# Revert Stage
tag @s remove stage_026
tag @s add stage_025
tag @s remove death_017
tag @s add death_016
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.iron","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":376}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.iron","color":"white"}'}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 90
scoreboard players set @s tbcHealth 90
# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem