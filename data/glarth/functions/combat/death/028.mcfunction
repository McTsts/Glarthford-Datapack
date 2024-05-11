# Break Animation
execute at @s run particle block soul_sand ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_206 15
scoreboard players operation @e[tag=tbcBoss] attack_206 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_207 0

# Revert Stage
tag @s remove stage_058
tag @s add stage_057
tag @s remove death_028
tag @s add death_027
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:494}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.wither\",\"color\":\"dark_gray\"}"}

# Undo Death
tag @s add tbcDeathUndo
scoreboard players set @s tbcMaxHealth 120
scoreboard players set @s tbcHealth 120

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem