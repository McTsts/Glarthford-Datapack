# Break Animation
execute at @s run particle block snow_block ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.snow.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcMiniBoss] attack_144 6
scoreboard players operation @e[tag=tbcMiniBoss] attack_144 -= @e[tag=tbcMiniBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcMiniBoss] attack_145 0

# Revert Stage
tag @s remove stage_022
tag @s add stage_021
tag @s remove death_012
tag @s add death_011
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.snow","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:370}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.snow\",\"color\":\"white\"}"}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 30
scoreboard players set @s tbcHealth 30

# Decrease Future Probability 
scoreboard players add @e[tag=tbcMiniBoss] tbcCharge 1
tag @e[tag=tbcMiniBoss] add tbcSkipGolem