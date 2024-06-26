# Break Animation
execute at @s run particle block{block_state:{Name:"soul_sand"}} ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_203 15
scoreboard players operation @e[tag=tbcBoss] attack_203 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_204 0

# Revert Stage
tag @s remove stage_055
tag @s add stage_054
tag @s remove death_025
tag @s add death_024
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":491}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.wither","color":"dark_gray"}'}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 30
scoreboard players set @s tbcHealth 30

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem