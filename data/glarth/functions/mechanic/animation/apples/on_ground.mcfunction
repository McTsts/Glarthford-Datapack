scoreboard players operation #apl appleid = @s appleid 
execute as @e[type=armor_stand,tag=applelanded,distance=..5] if score @s appleid = #apl appleid run tp @s ~ ~-2.0 ~

execute if block ~ ~-0.6 ~ #glarth:not_solid run tag @s add applemoved
execute if block ~ ~-0.6 ~ #glarth:not_solid run tp @s ~ ~-0.1 ~

execute unless entity @s[tag=applemoved] unless data entity @s {Motion:[0.0d,0.0d,0.0d]} run tag @s add applemoved
execute unless block ~ ~-0.6 ~ #glarth:not_solid if entity @s[tag=applemoved] if data entity @s {Motion:[0.0d,0.0d,0.0d]} run function glarth:mechanic/animation/apples/apple_drop

execute unless entity @s[tag=appleSlimeDead] if block ~ ~-0.6 ~ dirt_path run function glarth:mechanic/animation/apples/apple_drop