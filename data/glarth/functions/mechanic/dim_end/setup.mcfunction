execute as @s[tag=!esA] store result score @s Temp run setblock -1 255 -513 stone
execute as @s[tag=!esA] if score @s Temp matches 1 run setblock -1 255 -513 air
execute as @s[tag=!esA] if score @s Temp matches 1 run setblock -16 66 -514 minecraft:brown_stained_glass_pane
execute as @s[tag=!esA] if score @s Temp matches 1 run kill @e[tag=ender_architect]
execute as @s[tag=!esA] if score @s Temp matches 1 run summon armor_stand -15 64 -519 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":356}}],Tags:["char","ender_architect"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"ender_architect","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esA] if score @s Temp matches 1 run tag @s add esA

execute as @s[tag=!esB] store result score @s Temp run setblock -17 255 -513 stone
execute as @s[tag=!esB] if score @s Temp matches 1 run setblock -17 255 -513 air
execute as @s[tag=!esB] if score @s Temp matches 1 run setblock -19 66 -514 minecraft:brown_stained_glass_pane
execute as @s[tag=!esB] if score @s Temp matches 1 run setblock -22 67 -523 minecraft:brown_stained_glass_pane
execute as @s[tag=!esB] if score @s Temp matches 1 run setblock -29 68 -526 minecraft:brown_stained_glass_pane
execute as @s[tag=!esB] if score @s Temp matches 1 run tag @s add esB

execute as @s[tag=!esC] store result score @s Temp run setblock -17 255 -512 stone
execute as @s[tag=!esC] if score @s Temp matches 1 run setblock -17 255 -512 air
execute as @s[tag=!esC] if score @s Temp matches 1 run setblock -19 66 -511 minecraft:brown_stained_glass_pane
execute as @s[tag=!esC] if score @s Temp matches 1 run tag @s add esC

execute as @s[tag=!esD] store result score @s Temp run setblock -1 255 -497 stone
execute as @s[tag=!esD] if score @s Temp matches 1 run setblock -1 255 -497 air
execute as @s[tag=!esD] if score @s Temp matches 1 run setblock -16 66 -511 minecraft:brown_stained_glass_pane
execute as @s[tag=!esD] if score @s Temp matches 1 run tag @s add esD

execute as @s[tag=!esE] store result score @s Temp run setblock -33 255 -513 stone
execute as @s[tag=!esE] if score @s Temp matches 1 run setblock -33 255 -513 air
execute as @s[tag=!esE] if score @s Temp matches 1 run fill -37 69 -528 -37 70 -528 minecraft:brown_stained_glass_pane
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_guard6]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_guard7]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_guard8]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_guard9]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=endm1]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=enderman2]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=enderman3]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_guard_s]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=ender_knight]
execute as @s[tag=!esE] if score @s Temp matches 1 run kill @e[tag=endStoneEnd]
execute as @s[tag=!esE] if score @s Temp matches 1 unless block -47 86 -518 minecraft:chest run setblock -47 86 -518 minecraft:chest[facing=east,type=single,waterlogged=false]
execute as @s[tag=!esE] if score @s Temp matches 1 run data merge block -47 86 -518 {Items:[{Slot:1b,id:"minecraft:arrow",count:1},{Slot:7b,id:"minecraft:arrow",count:1},{Slot:9b,id:"minecraft:arrow",count:1},{Slot:11b,id:"minecraft:golden_apple",count:1},{Slot:13b,id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}},{Slot:15b,id:"minecraft:golden_apple",count:1},{Slot:17b,id:"minecraft:arrow",count:1},{Slot:19b,id:"minecraft:arrow",count:1},{Slot:25b,id:"minecraft:arrow",count:1}]}
execute as @s[tag=!esE] if score @s Temp matches 1 unless block -37 94 -518 minecraft:chest run setblock -37 94 -518 minecraft:chest[facing=west,type=single,waterlogged=false]
execute as @s[tag=!esE] if score @s Temp matches 1 run data merge block -37 94 -518 {Items:[{Slot:0b,id:"minecraft:arrow",count:1},{Slot:1b,id:"minecraft:arrow",count:1},{Slot:2b,id:"minecraft:arrow",count:1},{Slot:6b,id:"minecraft:arrow",count:1},{Slot:7b,id:"minecraft:arrow",count:1},{Slot:8b,id:"minecraft:arrow",count:1},{Slot:9b,id:"minecraft:arrow",count:1},{Slot:10b,id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}},{Slot:11b,id:"minecraft:arrow",count:1},{Slot:13b,id:"minecraft:enchanted_golden_apple",count:1,components:{"minecraft:lore":['{"translate":"lore.gapple.1","italic":false,"color":"gray"}','{"translate":"lore.gapple.2","italic":false,"color":"gray"}'],"minecraft:hide_additional_tooltip":{}}},{Slot:15b,id:"minecraft:arrow",count:1},{Slot:16b,id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}},{Slot:17b,id:"minecraft:arrow",count:1},{Slot:18b,id:"minecraft:arrow",count:1},{Slot:19b,id:"minecraft:arrow",count:1},{Slot:20b,id:"minecraft:arrow",count:1},{Slot:24b,id:"minecraft:arrow",count:1},{Slot:25b,id:"minecraft:arrow",count:1},{Slot:26b,id:"minecraft:arrow",count:1}]}
execute as @s[tag=!esE] if score @s Temp matches 1 unless block -44 79 -526 minecraft:chest run setblock -44 79 -526 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[{Slot:2b,id:"minecraft:arrow",Count:1b},{Slot:6b,id:"minecraft:arrow",Count:1b},{Slot:10b,id:"minecraft:arrow",Count:1b},{Slot:13b,id:"minecraft:golden_apple",Count:1b},{Slot:16b,id:"minecraft:arrow",Count:1b},{Slot:20b,id:"minecraft:arrow",Count:1b},{Slot:24b,id:"minecraft:arrow",Count:1b}]}
execute as @s[tag=!esE] if score @s Temp matches 1 run data merge block -44 79 -526 {Items:[{Slot:2b,id:"minecraft:arrow",count:1},{Slot:6b,id:"minecraft:arrow",count:1},{Slot:10b,id:"minecraft:arrow",count:1},{Slot:13b,id:"minecraft:golden_apple",count:1},{Slot:16b,id:"minecraft:arrow",count:1},{Slot:20b,id:"minecraft:arrow",count:1},{Slot:24b,id:"minecraft:arrow",count:1}]}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon minecraft:armor_stand -42 67 -516 {Marker:1,Invisible:1,Tags:["endStoneEnd","fire"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":181}}],Fire:1000s}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -39 67 -528 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":208}}],Tags:["char","ender_guard6"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"ender_guard6","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -43 85 -516 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":206}}],Tags:["char","ender_guard8"],Rotation:[-120.0f,0.0f],CustomName:'{"translate":"ender_guard8","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -45 85 -519 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":207}}],Tags:["char","ender_guard9"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"ender_guard9","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -42 93 -521 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":210}}],Tags:["char","ender_guard7","charTorchEnd"],Rotation:[30.0f,0.0f],CustomName:'{"translate":"ender_guard7","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -35 67 -519 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman1","endm1","tbcLoc101"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"enderman1","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -45 67 -518 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman2","tbcLoc104"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"enderman2","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -41 93 -515 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman3","tbcLoc104"],Rotation:[150.0f,0.0f],CustomName:'{"translate":"enderman3","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -41 79 -520 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":358}}],Tags:["char","ender_guard_s"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"ender_guard_s","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run summon armor_stand -41 73 -518 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":359}}],Tags:["char","ender_knight","tbcLoc104"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"ender_knight","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esE] if score @s Temp matches 1 run fill -39 84 -520 -39 79 -517 air
execute as @s[tag=!esE] if score @s Temp matches 1 run fill -42 79 -517 -40 81 -517 air
execute as @s[tag=!esE] if score @s Temp matches 1 run tag @s add esE

execute as @s[tag=!esF] store result score @s Temp run setblock -49 255 -577 stone
execute as @s[tag=!esF] if score @s Temp matches 1 run setblock -49 255 -577 air
execute as @s[tag=!esF] if score @s Temp matches 1 run fill -53 79 -584 -50 79 -581 minecraft:brown_stained_glass_pane replace end_rod
execute as @s[tag=!esF] if score @s Temp matches 1 run tag @s add esF

execute as @s[tag=!esG] store result score @s Temp run setblock -33 255 -705 stone
execute as @s[tag=!esG] if score @s Temp matches 1 run setblock -33 255 -705 air
execute as @s[tag=!esG] if score @s Temp matches 1 run fill -36 84 -712 -39 84 -709 minecraft:brown_stained_glass_pane replace end_rod
execute as @s[tag=!esG] if score @s Temp matches 1 run tag @s add esG

execute as @s[tag=!esH] store result score @s Temp run setblock -49 255 -513 stone
execute as @s[tag=!esH] if score @s Temp matches 1 run setblock -49 255 -513 air
execute as @s[tag=!esH] if score @s Temp matches 1 run kill @e[tag=sh1]
execute as @s[tag=!esH] if score @s Temp matches 1 run summon armor_stand -49 67 -516 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":205}}],Tags:["char","shulker","sh1","tbcLoc101"],Rotation:[30.0f,0.0f],CustomName:'{"translate":"shulker","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esH] if score @s Temp matches 1 run tag @s add esH

execute as @s[tag=!esI] store result score @s Temp run setblock -33 255 -545 stone
execute as @s[tag=!esI] if score @s Temp matches 1 run setblock -33 255 -545 air
execute as @s[tag=!esI] if score @s Temp matches 1 run kill @e[tag=ender_priest]
execute as @s[tag=!esI] if score @s Temp matches 1 run summon armor_stand -44 85 -547 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":30,"minecraft:unbreakable":{}}}],Tags:["char","ender_priest","tbcLoc102"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"ender_priest","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esI] if score @s Temp matches 1 run tag @s add esI

execute as @s[tag=!esJ] store result score @s Temp run setblock -65 255 -497 stone
execute as @s[tag=!esJ] if score @s Temp matches 1 run setblock -65 255 -497 air
execute as @s[tag=!esJ] if score @s Temp matches 1 run kill @e[tag=ender_merchant]
execute as @s[tag=!esJ] if score @s Temp matches 1 run summon armor_stand -70 72 -511 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":357,"minecraft:unbreakable":{}}}],Tags:["char","ender_merchant"],Rotation:[-65.0f,0.0f],CustomName:'{"translate":"ender_merchant","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esJ] if score @s Temp matches 1 run tag @s add esJ

execute as @s[tag=!esK] store result score @s Temp run setblock -49 255 -593 stone
execute as @s[tag=!esK] if score @s Temp matches 1 run setblock -49 255 -593 air
execute as @s[tag=!esK] if score @s Temp matches 1 run kill @e[tag=sh2]
execute as @s[tag=!esK] if score @s Temp matches 1 run summon armor_stand -58 80 -602 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":205}}],Tags:["char","shulker","sh2","tbcLoc101"],Rotation:[-120.0f,0.0f],CustomName:'{"translate":"shulker","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esK] if score @s Temp matches 1 run tag @s add esK

execute as @s[tag=!esL] store result score @s Temp run setblock -97 255 -577 stone
execute as @s[tag=!esL] if score @s Temp matches 1 run setblock -97 255 -577 air
execute as @s[tag=!esL] if score @s Temp matches 1 run kill @e[tag=sh3]
execute as @s[tag=!esL] if score @s Temp matches 1 run summon armor_stand -98 79 -576.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":205}}],Tags:["char","shulker","sh3","tbcLoc101"],Rotation:[-120.0f,0.0f],CustomName:'{"translate":"shulker","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esL] if score @s Temp matches 1 run tag @s add esL

execute as @s[tag=!esM] store result score @s Temp run setblock -97 255 -561 stone
execute as @s[tag=!esM] if score @s Temp matches 1 run setblock -97 255 -561 air
execute as @s[tag=!esM] if score @s Temp matches 1 run kill @e[tag=endm2]
execute as @s[tag=!esM] if score @s Temp matches 1 run summon armor_stand -100 82 -563 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman1","tbcLoc101","endm2"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"enderman1","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esM] if score @s Temp matches 1 run tag @s add esM

execute as @s[tag=!esN] store result score @s Temp run setblock -65 255 -481 stone
execute as @s[tag=!esN] if score @s Temp matches 1 run setblock -65 255 -481 air
execute as @s[tag=!esN] if score @s Temp matches 1 run kill @e[tag=endm3]
execute as @s[tag=!esN] if score @s Temp matches 1 run summon armor_stand -72 78 -486 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman1","tbcLoc101","endm3"],Rotation:[-160.0f,0.0f],CustomName:'{"translate":"enderman1","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esN] if score @s Temp matches 1 run tag @s add esN

execute as @s[tag=!esO] store result score @s Temp run setblock -33 255 -481 stone
execute as @s[tag=!esO] if score @s Temp matches 1 run setblock -33 255 -481 air
execute as @s[tag=!esO] if score @s Temp matches 1 run kill @e[tag=sh4]
execute as @s[tag=!esO] if score @s Temp matches 1 run summon armor_stand -35 73 -482 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":205}}],Tags:["char","shulker","sh4","tbcLoc101"],Rotation:[170.0f,0.0f],CustomName:'{"translate":"shulker","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esO] if score @s Temp matches 1 run tag @s add esO

execute as @s[tag=!esP] store result score @s Temp run setblock 15 255 -577 stone
execute as @s[tag=!esP] if score @s Temp matches 1 run setblock 15 255 -577 air
execute as @s[tag=!esP] if score @s Temp matches 1 run kill @e[tag=endm4]
execute as @s[tag=!esP] if score @s Temp matches 1 run summon armor_stand 5 80 -583 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman1","tbcLoc101","endm4"],Rotation:[110.0f,0.0f],CustomName:'{"translate":"enderman1","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esP] if score @s Temp matches 1 run tag @s add esP

execute as @s[tag=!esQ] store result score @s Temp run setblock -33 255 -593 stone
execute as @s[tag=!esQ] if score @s Temp matches 1 run setblock -33 255 -593 air
execute as @s[tag=!esQ] if score @s Temp matches 1 run kill @e[tag=endm5]
execute as @s[tag=!esQ] if score @s Temp matches 1 run summon armor_stand -46 82 -595 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":31}}],Tags:["char","enderman1","tbcLoc101","endm5"],Rotation:[15.0f,0.0f],CustomName:'{"translate":"enderman1","color":"dark_purple"}',CustomNameVisible:1}
execute as @s[tag=!esQ] if score @s Temp matches 1 run tag @s add esQ

execute as @s[tag=!esR] store result score @s Temp run setblock -65 255 -529 stone
execute as @s[tag=!esR] if score @s Temp matches 1 run setblock -65 255 -529 air
execute as @s[tag=!esR] if score @s Temp matches 1 run kill @e[tag=explorer]
execute as @s[tag=!esR] if score @s Temp matches 1 run setblock -65 82 -533 air
execute as @s[tag=!esR] if score @s Temp matches 1 run summon armor_stand -65 82 -533 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":52,"minecraft:unbreakable":{}}}],Tags:["char","explorer"],Rotation:[-60.0f,0.0f],CustomName:'{"translate":"explorer","color":"gold"}',CustomNameVisible:1}
execute as @s[tag=!esR] if score @s Temp matches 1 run tag @s add esR

execute as @s[tag=!esS] store result score @s Temp run setblock -33 255 -641 stone
execute as @s[tag=!esS] if score @s Temp matches 1 run setblock -33 255 -641 air
execute as @s[tag=!esS] if score @s Temp matches 1 run setblock -48 90 -645 air
execute as @s[tag=!esS] if score @s Temp matches 1 run tag @s add esS

execute as @s[tag=!esT] store result score @s Temp run setblock -97 255 -529 stone
execute as @s[tag=!esT] if score @s Temp matches 1 run setblock -97 255 -529 air
execute as @s[tag=!esT] if score @s Temp matches 1 unless block -107 88 -536 chest run setblock -107 88 -536 minecraft:chest[facing=east,type=single,waterlogged=false]
execute as @s[tag=!esT] if score @s Temp matches 1 run data merge block -107 88 -536 {Items:[{Slot:3b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:5b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:10b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:13b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:21b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:24b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}},{Slot:26b,id:"minecraft:gray_dye",count:1,components:{"minecraft:custom_name":'{"translate":"item.minecraft.chorus_fruit","italic":false}'}}]}
execute as @s[tag=!esT] if score @s Temp matches 1 run tag @s add esT

execute as @s[tag=!esU] store result score @s Temp run setblock -33 255 -449 stone
execute as @s[tag=!esU] if score @s Temp matches 1 run setblock -33 255 -449 air
execute as @s[tag=!esU] if score @s Temp matches 1 run kill @e[tag=enderman_s1]
execute as @s[tag=!esU] if score @s Temp matches 1 run summon armor_stand -47 86 -462 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":457,"minecraft:unbreakable":{}}}],Tags:["char","enderman_s1"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"enderman_s1","color":"dark_purple"}',CustomNameVisible:1,NoGravity:1}
execute as @s[tag=!esU] if score @s Temp matches 1 run tag @s add esU

execute as @s[tag=!esV] store result score @s Temp run setblock 31 255 -625 stone
execute as @s[tag=!esV] if score @s Temp matches 1 run setblock 31 255 -625 air
execute as @s[tag=!esV] if score @s Temp matches 1 run kill @e[tag=enderman_s2]
execute as @s[tag=!esV] if score @s Temp matches 1 run summon armor_stand 16 75 -632 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":458,"minecraft:unbreakable":{}}}],Tags:["char","enderman_s2"],Rotation:[66.0f,0.0f],CustomName:'{"translate":"enderman_s2","color":"dark_purple"}',CustomNameVisible:1,NoGravity:1}
execute as @s[tag=!esV] if score @s Temp matches 1 run tag @s add esV

execute as @s[tag=!esW] store result score @s Temp run setblock -49 255 -609 stone
execute as @s[tag=!esW] if score @s Temp matches 1 run setblock -49 255 -609 air
execute as @s[tag=!esW] if score @s Temp matches 1 unless block -56 81 -617 chest run setblock -56 81 -617 minecraft:chest[facing=south,type=single,waterlogged=false]
execute as @s[tag=!esW] if score @s Temp matches 1 run data merge block -56 81 -617 {Items:[{Slot:2b,id:"minecraft:arrow",count:1},{Slot:6b,id:"minecraft:arrow",count:1},{Slot:9b,id:"minecraft:arrow",count:1},{Slot:10b,id:"minecraft:arrow",count:1},{Slot:13b,id:"minecraft:golden_apple",count:1},{Slot:16b,id:"minecraft:arrow",count:1},{Slot:17b,id:"minecraft:arrow",count:1},{Slot:20b,id:"minecraft:arrow",count:1},{Slot:24b,id:"minecraft:arrow",count:1}]}
execute as @s[tag=!esW] if score @s Temp matches 1 run tag @s add esW


