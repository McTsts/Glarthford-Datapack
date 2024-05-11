scoreboard players add @s action 1
tp @s[score_action_min=1,score_action=5] ~ ~ ~0.4
execute @s[score_action_min=1,score_action=1] ~ ~ ~ effect @a[m=2] 14 7 5 true
execute @s[score_action_min=2,score_action=2] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"paper",Count:1,tag:{display:{LocName:"item.rletter",Lore:["I kidnapped your wife!","I'll kill her at 00:00, meet","me in the sewers -R.R."]}}},CustomName:"Letter",CustomNameVisible:1}
execute @s[score_action_min=2,score_action=2] ~ ~ ~ effect @a[m=2] 2 7 5 true
execute @s[score_action_min=2,score_action=2] ~ ~ ~ setblock -8 26 -200 minecraft:barrier
tp @s[score_action_min=6,score_action=14] ~0.2 ~ ~0.2 ~-10 ~
execute @s[score_action_min=15,score_action=15] ~ ~ ~ setblock -8 26 -200 air
tp @s[score_action_min=15,score_action=32] ~0.4 ~ ~ ~ ~
tp @s[score_action_min=33,score_action=41] ~0.2 ~ ~-0.2 ~-10 ~
tp @s[score_action_min=42,score_action=50] ~0.2 ~ ~-0.2 ~10 ~
tp @s[score_action_min=51,score_action=59] ~0.2 ~ ~-0.2 ~-10 ~
tp @s[score_action_min=60,score_action=100] ~ ~ ~-0.4 ~ ~
execute @s[score_action_min=100,score_action=100] ~ ~ ~ particle smoke ~ ~ ~ 1 1 1 0.1 100
kill @s[score_action_min=100,score_action=100]