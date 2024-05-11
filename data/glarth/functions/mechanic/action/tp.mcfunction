scoreboard players add @s action 1
tp @s[scores={action=1..10}] ~ ~ ~ ~10 ~20
tp @s[scores={action=11..20}] ~ ~ ~ ~-10 ~-20
tag @s[scores={action=20..20}] remove tp
scoreboard players set @s[scores={action=20..20}] action 0