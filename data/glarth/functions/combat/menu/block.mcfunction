execute as @s[scores={tbcCarrot=1..}] if score @s blocking matches 1 at @s run playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1
execute as @s[scores={tbcCarrot=1..}] if score @s blocking matches 0 at @s run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1
execute as @s[scores={tbcCarrot=1..}] if score @s blocking matches 0 run scoreboard players set @s failedBlock 1
execute as @s[scores={tbcCarrot=1..}] if score @s blocking matches 1 run scoreboard players set @s blocked 1
execute as @s[scores={tbcCarrot=1..}] run clear @s iron_ingot
execute as @s[scores={tbcCarrot=1..}] run clear @s iron_nugget
execute as @s[scores={tbcCarrot=1..}] run scoreboard players set @s tbcMenuX -1