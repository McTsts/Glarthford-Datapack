scoreboard players add @s action 1
tp @s[scores={action=1..20}] ~ ~ ~ ~18 ~
tag @s[scores={action=20..20}] remove 360
scoreboard players set @s[scores={action=20..20}] action 0