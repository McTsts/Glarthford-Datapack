scoreboard players add @s action 1
tp @s[score_action_min=1,score_action=10] ~ ~ ~ ~10 ~20
tp @s[score_action_min=11,score_action=20] ~ ~ ~ ~-10 ~-20
scoreboard players tag @s[score_action_min=20,score_action=20] remove tp
scoreboard players set @s[score_action_min=20,score_action=20] action 0