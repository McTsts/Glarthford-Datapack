# Break Animation
execute at @s run particle block iron_block ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_148 15
scoreboard players operation @e[tag=tbcBoss] attack_148 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_149 0

# Revert Stage
tag @s remove stage_024
tag @s add stage_023
tag @s remove death_015
tag @s add death_014
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.iron","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:374}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.iron\",\"color\":\"white\"}"}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 30
scoreboard players set @s tbcHealth 30

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem