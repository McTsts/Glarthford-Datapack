scoreboard players add @s action 1
tp @s[score_action_min=1,score_action=20] ~0.08 ~ ~ 
tp @s[score_action_min=21,score_action=30] ~0.08 ~ ~ ~-2 ~
tp @s[score_action_min=31,score_action=45] ~0.06 ~ ~-0.06 ~-2 ~
tp @s[score_action_min=46,score_action=60] ~0.06 ~ ~-0.06 ~ ~
tp @s[score_action_min=61,score_action=75] ~0.06 ~ ~-0.06 ~-2 ~
tp @s[score_action_min=76,score_action=80] ~0.06 ~ ~-0.06 ~-2 ~
tp @s[score_action_min=81,score_action=110] ~ ~ ~-0.1 ~ ~
tp @s[score_action_min=111,score_action=150] ~0.025 ~ ~-0.05 ~0.5 ~
tp @s[score_action_min=151,score_action=175] ~ ~ ~-0.05 ~-0.5 ~
entitydata @s[score_action_min=180,score_action=180] {Motion:[0.0,0.4,-0.3]}
tp @s[score_action_min=190,score_action=270] ~0.005 ~ ~-0.1 ~0.01 ~
tp @s[score_action_min=271,score_action=310] ~0.01 ~ ~-0.07 ~0.01 ~
tp @s[score_action_min=271,score_action=315] ~0.03 ~ ~-0.06 ~0.01 ~
tp @s[score_action_min=316,score_action=325] ~0.03 ~ ~-0.04 ~0.03 ~
tp @s[score_action_min=326,score_action=355] ~0.06 ~ ~-0.02 ~3 ~
tp @s[score_action_min=356,score_action=370] ~0.1 ~ ~0.02 ~0.5 ~
tp @s[score_action_min=371,score_action=390] ~0.1 ~ ~0.03 ~1 ~
tp @s[score_action_min=391,score_action=400] ~0.08 ~ ~0.05 ~1 ~
tp @s[score_action_min=401,score_action=430] ~0.08 ~ ~0.08 ~ ~
tp @s[score_action_min=440,score_action=600] ~0.08 ~ ~0.08 ~ ~
tp @s[score_action_min=601,score_action=750] ~0.06 ~ ~0.09 ~0.1 ~
tp @s[score_action_min=760,score_action=800] ~0.02 ~ ~0.1 ~0.2 ~
tp @s[score_action_min=801,score_action=850] ~0.04 ~ ~0.1 ~-1 ~
tp @s[score_action_min=851,score_action=880] ~0.1 ~ ~0.01 ~-1 ~
execute @s[score_action_min=860,score_action=860] ~ ~ ~ fill -20 26 -198 -20 26 -194 air 0 destroy
execute @s[score_action_min=880,score_action=880] ~ ~ ~ fill -20 27 -198 -20 27 -194 air 0 destroy
execute @s[score_action_min=900,score_action=900] ~ ~ ~ fill -20 28 -198 -20 28 -194 air 0 destroy
execute @s[score_action_min=920,score_action=920] ~ ~ ~ fill -20 29 -197 -20 29 -195 air 0 destroy
tp @s[score_action_min=881,score_action=950] ~0.15 ~ ~ ~ ~
tp @s[score_action_min=951,score_action=1035] ~0.15 ~ ~ ~0.2 ~
tp @s[score_action_min=1036,score_action=1085] ~0.05 ~ ~0.05 ~1 ~
tp @s[score_action_min=1086,score_action=1150] ~0.05 ~ ~0.05 ~ ~
tp @s[score_action_min=1151,score_action=1200] ~ ~ ~0.1 ~0.8 ~
execute @s[score_action_min=1180,score_action=1180] ~ ~ ~ setblock 7 24 -184 minecraft:redstone_torch
tp @s[score_action_min=1201,score_action=1250] ~ ~ ~0.08 ~ ~
execute @s[score_action_min=1230,score_action=1230] ~ ~ ~ setblock 7 24 -184 air
tp @s[score_action_min=1251,score_action=1300] ~ ~ ~ ~-2 ~
scoreboard players tag @s[score_action_min=1300,score_action=1300] add b
scoreboard players tag @s[score_action_min=1300,score_action=1300] remove walk_away
scoreboard players set @s[score_action_min=1300,score_action=1300] action 0