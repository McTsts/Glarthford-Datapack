# Break Animation
execute at @s run particle block soul_sand ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcBoss] attack_202 15
scoreboard players operation @e[tag=tbcBoss] attack_202 -= @e[tag=tbcBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcBoss] attack_203 0

# Revert Stage

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem