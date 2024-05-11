# Break Animation
execute at @s run particle block{block_state:{Name:"iron_block"}} ~ ~0.5 ~ 0.5 0.5 0.5 0 30
execute at @s run playsound minecraft:block.metal.break block @a ~ ~ ~ 1 0.5

# Reenable Attacks
scoreboard players set @e[tag=tbcBoss] attack_147 15
scoreboard players operation @e[tag=tbcBoss] attack_147 -= @e[tag=tbcBoss,limit=1] tbcCharge

# Decrease Future Probability 
scoreboard players add @e[tag=tbcBoss] tbcCharge 1
tag @e[tag=tbcBoss] add tbcSkipGolem