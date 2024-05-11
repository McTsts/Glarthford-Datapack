# Break Animation
execute at @s run particle block snow_block ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.snow.break block @a ~ ~ ~ 1 0.5

# Revert Attacks
scoreboard players set @e[tag=tbcMiniBoss] attack_143 6
scoreboard players operation @e[tag=tbcMiniBoss] attack_143 -= @e[tag=tbcMiniBoss,limit=1] tbcCharge
scoreboard players set @e[tag=tbcMiniBoss] attack_144 0

# Revert Stage

# Decrease Future Probability 
scoreboard players add @e[tag=tbcMiniBoss] tbcCharge 1
tag @e[tag=tbcMiniBoss] add tbcSkipGolem