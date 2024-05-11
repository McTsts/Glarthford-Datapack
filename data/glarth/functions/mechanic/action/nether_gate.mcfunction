scoreboard players add @s action 1
execute @s[score_action_min=10,score_action=10] ~ ~ ~ fill -117 22 -203 -117 22 -205 air 0 destroy
execute @s[score_action_min=20,score_action=20] ~ ~ ~ fill -117 23 -203 -117 23 -205 air 0 destroy
execute @s[score_action_min=30,score_action=30] ~ ~ ~ fill -117 24 -203 -117 24 -205 air 0 destroy
execute @s[score_action_min=40,score_action=40] ~ ~ ~ setblock -117 25 -204 air 0 destroy
execute @s[score_action_min=1,score_action=1] ~ ~ ~ summon armor_stand -137 21 -203 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:29,tag:{Unbreakable:1}}],Tags:["char","netheran"],Rotation:[-90f,0f],CustomName:"Netheran",Team:dark_red,CustomNameVisible:1}
execute @s[score_action_min=1,score_action=1] ~ ~ ~ summon blaze -130 25 -241 {Tags:["blaze_a"],NoGravity:0b,Attributes:[{Name:generic.movementSpeed,Base:0}],PersistenceRequired:1b}
execute @s[score_action_min=1,score_action=1] ~ ~ ~ summon blaze -132 25 -167 {Tags:["blaze_b"],NoGravity:0b,Attributes:[{Name:generic.movementSpeed,Base:0}],PersistenceRequired:1b}
execute @s[score_action_min=1,score_action=1] ~ ~ ~ summon minecraft:armor_stand -132 23.6 -167 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:91}],NoGravity:1,Invisible:1,Invulnerable:1}
execute @s[score_action_min=1,score_action=1] ~ ~ ~ summon minecraft:armor_stand -130 23.6 -241 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:91}],NoGravity:1,Invisible:1,Invulnerable:1}