scoreboard players add @s action 1
execute @s[score_action_min=1,score_action=1] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 5 force @a 251 14
execute @s[score_action_min=1,score_action=1] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=11,score_action=11] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 5 force @a 251 14
execute @s[score_action_min=11,score_action=11] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=21,score_action=21] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 10 force @a 251 14
execute @s[score_action_min=21,score_action=21] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=27,score_action=27] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 10 force @a 251 14
execute @s[score_action_min=27,score_action=27] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=33,score_action=33] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 20 force @a 251 14
execute @s[score_action_min=33,score_action=33] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=35,score_action=35] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 20 force @a 251 14
execute @s[score_action_min=35,score_action=35] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=40,score_action=50] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.1 20 force @a 251 14
execute @s[score_action_min=51,score_action=60] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.2 30 force @a 251 14
execute @s[score_action_min=61,score_action=70] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 0.5 50 force @a 251 14
execute @s[score_action_min=71,score_action=80] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 1 100 force @a 251 14
execute @s[score_action_min=81,score_action=90] ~ ~ ~ particle iconcrack 70.0 27 -156 0.1 0.1 0.1 2 200 force @a 251 14
execute @s[score_action_min=40,score_action=90] ~ ~ ~ playsound minecraft:entity.enderdragon.hurt master @a ~ ~ ~ 1 0
execute @s[score_action_min=91,score_action=91] ~ ~ ~ fill 70 28 -157 70 26 -155 air 0 destroy
execute @s[score_action_min=91,score_action=91] ~ ~ ~ particle smoke 70 27 -156 1 1 1 0.2 100
execute @s[score_action_min=91,score_action=91] ~ ~ ~ particle cloud 70 27 -156 1 1 1 0.2 100
execute @s[score_action_min=91,score_action=91] ~ ~ ~ playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute @s[score_action_min=91,score_action=91] ~ ~ ~ playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute @s[score_action_min=91,score_action=91] ~ ~ ~ playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
execute @s[score_action_min=91,score_action=91] ~ ~ ~ playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
execute @s[score_action_min=91,score_action=91] ~ ~ ~ playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0
execute @s[score_action_min=100,score_action=100] ~ ~ ~ summon armor_stand ~ ~1.4 ~ {Tags:["char_msg"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:"! ! !",NoGravity:1,Team:gray}
entitydata @s[score_action_min=110,score_action=160] {Motion:[0.1,-0.1,0.0]}