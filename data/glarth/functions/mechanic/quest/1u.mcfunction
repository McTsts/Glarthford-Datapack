execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:dolphins_grace 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:water_breathing 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:water_breathing
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:dolphins_grace 
