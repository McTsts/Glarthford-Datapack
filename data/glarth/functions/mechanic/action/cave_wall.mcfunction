scoreboard players add @s action 1
tp @s[score_action_min=1,score_action=8] ~ ~ ~-0.07
tp @s[score_action_min=9,score_action=13] ~ ~-0.19 ~-0.08
tp @s[score_action_min=14,score_action=16] ~ ~ ~-0.09
tp @s[score_action_min=17,score_action=22] ~ ~ ~-0.1 ~2 ~
tp @s[score_action_min=23,score_action=27] ~0.05 ~ ~-0.1 ~3.5 ~
tp @s[score_action_min=28,score_action=30] ~0.1 ~ ~-0.05 ~3.5 ~
tp @s[score_action_min=31,score_action=42] ~0.1 ~ ~-0.04 ~4 ~
tp @s[score_action_min=43,score_action=50] ~0.1 ~ ~ ~0.25 ~
execute @s[score_action_min=55,score_action=55] ~ ~ ~ fill 68 28 -156 68 29 -155 air 0 destroy
execute @s[score_action_min=55,score_action=55] ~ ~ ~ fill 68 28 -157 68 26 -156 air 0 destroy
execute @s[score_action_min=65,score_action=65] ~ ~ ~ summon armor_stand ~ ~1.4 ~ {Tags:["char_msg"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:"???",NoGravity:1,Team:gray}
tp @s[score_action_min=85,score_action=105] ~0.1 ~ ~ ~ ~
execute @s[score_action_min=105,score_action=105] ~ ~ ~ give @p diamond_pickaxe 1 0 {CanDestroy:["quartz_ore"],HideFlags:55}
scoreboard players tag @s[score_action_min=105,score_action=105] remove cave_wall
scoreboard players set @s[score_action_min=105,score_action=105] action 0