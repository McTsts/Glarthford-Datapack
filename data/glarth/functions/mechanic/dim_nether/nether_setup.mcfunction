# Blaze Rod
#execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -144 20.65 -198 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":106}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[155.0f,0.0f],DisabledSlots:2039583}
#execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -141 20.65 -208 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":106}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[25.0f,0.0f],DisabledSlots:2039583}
#execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -133 20.65 -210 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":106}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[225.0f,0.0f],DisabledSlots:2039583}


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] store result score @s Temp run setblock -196 0 -156 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] if score @s Temp matches 1 run setblock -196 0 -156 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] if score @s Temp matches 1 run kill @e[tag=pigman,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] if score @s Temp matches 1 run summon armor_stand -194 29 -155 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":27,"minecraft:unbreakable":{}}}],Tags:["char","pigman"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"pigman","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] if score @s Temp matches 1 run fill -191 29 -153 -193 32 -153 minecraft:nether_brick_fence[west=true,east=true] replace air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsA] if score @s Temp matches 1 run tag @s add nsA


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] store result score @s Temp run setblock -191 0 -134 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 run setblock -191 0 -134 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 run kill @e[tag=netheran,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 run kill @e[tag=piglin6,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 if score quest Stats matches 3 run summon armor_stand -191 28 -133 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":29}}],Tags:["char","netheran","tbcLoc094"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"netheran","color":"dark_red"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -189 29 -146 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":479,"minecraft:unbreakable":{}}}],Tags:["char","piglin6"],Rotation:[135.0f,0.0f],CustomName:'{"translate":"piglin6","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 if score quest Stats matches 8 run summon minecraft:strider -186 29 -145 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 if score quest Stats matches 8 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 if score quest Stats matches 8 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsB] if score @s Temp matches 1 run tag @s add nsB


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsC] store result score @s Temp run setblock -201 0 -173 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsC] if score @s Temp matches 1 run setblock -201 0 -173 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsC] if score @s Temp matches 1 run clone -208 30 -167 -208 30 -167 -205 30 -167
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsC] if score @s Temp matches 1 run clone -195 32 -176 -195 32 -176 -195 28 -174
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsC] if score @s Temp matches 1 run tag @s add nsC


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] store result score @s Temp run setblock -183 0 -195 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run setblock -183 0 -195 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run kill @e[tag=ws1,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run kill @e[tag=assassin,type=armor_stand,tag=!notNether]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -188 14 -202 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -188 14 -202 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -182 14 -193 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -182 14 -193 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -182 14 -193 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run summon minecraft:strider -182 14 -193 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 if score combat Stats matches 0 run summon armor_stand -183 29 -195 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":146,"minecraft:unbreakable":{}}}],Tags:["char","wskeleton","ws1","tbcLoc092"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"wskeleton","color":"black"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 if score quest Stats matches 3 run summon armor_stand -167 29 -194 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":34,"minecraft:unbreakable":{}}}],Tags:["char","assassin"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"assassin","color":"black"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsD] if score @s Temp matches 1 run tag @s add nsD


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] store result score @s Temp run setblock -205 0 -188 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run setblock -205 0 -188 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run kill @e[tag=blaze1,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run kill @e[tag=blaze,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 if score quest Stats matches 3 run summon armor_stand -205 35 -188 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":205}}],Tags:["char","blaze1","blaze_b","char_look","tbcLoc092"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"blaze1","color":"gold"}',CustomNameVisible:1,Team:"dark_gray"}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -205 35 -188 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":205}}],Tags:["char","blaze","char_look","tbcLoc092"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"blaze","color":"gold"}',CustomNameVisible:1,Team:"dark_gray"}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run summon minecraft:strider -196 14 -185 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run summon minecraft:strider -196 14 -185 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run summon minecraft:strider -196 14 -185 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run summon minecraft:strider -196 14 -185 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run summon minecraft:strider -196 14 -185 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsE] if score @s Temp matches 1 run tag @s add nsE


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] store result score @s Temp run setblock -207 0 -220 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 run setblock -207 0 -220 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 run kill @e[tag=blaze2,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 run kill @e[tag=mc3,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 if score quest Stats matches 3 run summon armor_stand -207 15 -220 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":205}}],Tags:["char","blaze2","blaze_a","char_look","tbcLoc093"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"blaze2","color":"gold"}',CustomNameVisible:1,Team:"dark_gray"}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -207 15 -220 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":144}}],Tags:["char","magma_cube","char_look","mc3","tbcLoc093"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"magma_cube","color":"red"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsF] if score @s Temp matches 1 run tag @s add nsF

execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsG] store result score @s Temp run setblock -178 0 -237 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsG] if score @s Temp matches 1 run setblock -178 0 -237 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsG] if score @s Temp matches 1 run kill @e[tag=mc1,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsG] if score @s Temp matches 1 run summon armor_stand -178 25 -237 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":144}}],Tags:["char","magma_cube","char_look","mc1","tbcLoc093"],Rotation:[-45.0f,0.0f],CustomName:'{"translate":"magma_cube","color":"red"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsG] if score @s Temp matches 1 run tag @s add nsG


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] store result score @s Temp run setblock -219 0 -198 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run setblock -219 0 -198 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run kill @e[tag=explorer,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run kill @e[tag=trader,tag=nether,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run summon armor_stand -219 26 -198 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":52,"minecraft:unbreakable":{}}}],Tags:["char","explorer"],Rotation:[-80.0f,0.0f],CustomName:'{"translate":"explorer","color":"gold"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -217 14 -207 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":228,"minecraft:unbreakable":{}}}],Tags:["char","trader","nether"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"trader","color":"blue"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -210 20 -196 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 if score quest Stats matches 8 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 if score quest Stats matches 8 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run kill @e[tag=n_echest]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run summon minecraft:area_effect_cloud -220 14 -206 {Duration:999999,Tags:["echest","n_echest"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsH] if score @s Temp matches 1 run tag @s add nsH


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsI] store result score @s Temp run setblock -217 0 -205 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsI] if score @s Temp matches 1 run setblock -217 0 -205 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsI] if score @s Temp matches 1 run clone -218 27 -202 -218 27 -202 -218 27 -200
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsI] if score @s Temp matches 1 run tag @s add nsI


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsJ] store result score @s Temp run setblock -205 0 -228 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsJ] if score @s Temp matches 1 run setblock -205 0 -228 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsJ] if score @s Temp matches 1 run clone -204 29 -230 -204 29 -230 -205 29 -228
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsJ] if score @s Temp matches 1 run tag @s add nsJ


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsK] store result score @s Temp run setblock -179 0 -180 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsK] if score @s Temp matches 1 run setblock -179 0 -180 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsK] if score @s Temp matches 1 run kill @e[tag=mc2,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsK] if score @s Temp matches 1 run summon armor_stand -179 57 -180 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":144}}],Tags:["char","magma_cube","char_look","mc2","tbcLoc093"],Rotation:[110.0f,0.0f],CustomName:'{"translate":"magma_cube","color":"red"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsK] if score @s Temp matches 1 run tag @s add nsK


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] store result score @s Temp run setblock -163 0 -172 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 run setblock -163 0 -172 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 run kill @e[tag=ws2,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 if score combat Stats matches 0 run summon armor_stand -163 49 -172 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":146,"minecraft:unbreakable":{}}}],Tags:["char","wskeleton","ws2","tbcLoc093"],Rotation:[110.0f,0.0f],CustomName:'{"translate":"wskeleton","color":"black"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -173 47 -174 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -173 47 -174 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 if score quest Stats matches 8 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 if score quest Stats matches 8 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsL] if score @s Temp matches 1 run tag @s add nsL

execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] store result score @s Temp run setblock -235 0 -185 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 run setblock -235 0 -185 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 3 run clone -235 69 -189 -239 62 -197 -194 23 -196
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run clone -227 69 -189 -231 62 -197 -194 23 -196
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run kill @e[tag=ghastName,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run kill @e[tag=ghastDis,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run kill @e[tag=ghast,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run summon minecraft:armor_stand -192 27 -192 {NoGravity:1,Invulnerable:1b,DisabledSlots:4144959,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":264}}],Invisible:1,Tags:["ghastDis"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run summon minecraft:armor_stand -192 27 -192 {NoGravity:1,Invulnerable:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{}],Invisible:1,Tags:["ghast","char","cnoc","tbcLoc091"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 if score quest Stats matches 8 run summon minecraft:armor_stand -192 32.5 -192 {CustomName:'{"translate":"ghast","color":"white"}',CustomNameVisible:1,NoGravity:1,Invulnerable:1,Invisible:1,Tags:["ghastName"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsM] if score @s Temp matches 1 run tag @s add nsM


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] store result score @s Temp run setblock -176 0 -208 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run setblock -176 0 -208 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run kill @e[tag=piglin1,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run kill @e[tag=piglin2,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run kill @e[tag=piglin3,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run kill @e[tag=piglin4,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run kill @e[tag=piglin5,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run summon armor_stand -170 57 -204 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":472,"minecraft:unbreakable":{}}}],Tags:["char","piglin1","angryPiglin","tbcLoc013"],Rotation:[30.0f,0.0f],CustomName:'{"translate":"piglin1","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -167 57 -201 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":476,"minecraft:unbreakable":{}}}],Tags:["char","piglin3","angryPiglin","tbcLoc013"],Rotation:[50.0f,0.0f],CustomName:'{"translate":"piglin3","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -167 56 -205 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":477,"minecraft:unbreakable":{}}}],Tags:["char","piglin4","angryPiglin","tbcLoc013"],Rotation:[35.0f,0.0f],CustomName:'{"translate":"piglin4","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -166 56 -203 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":478,"minecraft:unbreakable":{}}}],Tags:["char","piglin5","angryPiglin","tbcLoc013"],Rotation:[50.0f,0.0f],CustomName:'{"translate":"piglin5","color":"light_purple"}',CustomNameVisible:1}
#execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -165 56 -204 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":507,"minecraft:unbreakable":{}}}],Tags:["char","piglin8","tbcLoc093"],Rotation:[50.0f,0.0f],CustomName:'{"translate":"piglin8","color":"gray"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -176 56 -196 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"],Motion:[-1.0d,0.0d,0.0d]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -176 56 -206 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"],Motion:[-1.0d,0.0d,0.0d]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run summon hoglin -176 56 -206 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"],Motion:[-1.5d,0.0d,0.0d]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 if score quest Stats matches 8 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsN] if score @s Temp matches 1 run tag @s add nsN



execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsO] store result score @s Temp run setblock -200 0 -157 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsO] if score @s Temp matches 1 run setblock -200 0 -157 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsO] if score @s Temp matches 1 run clone -200 25 -157 -200 25 -157 -200 30 -154
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsO] if score @s Temp matches 1 run tag @s add nsO


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] store result score @s Temp run setblock -145 0 -192 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run setblock -145 0 -192 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run kill @e[tag=piglin8,type=armor_stand]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon armor_stand -147 19 -190 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":507,"minecraft:unbreakable":{}}}],Tags:["char","angryPiglin","piglin8","tbcLoc093"],Rotation:[15.0f,0.0f],CustomName:'{"translate":"piglin8","color":"gray"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon hoglin -146 14 -181 {DeathLootTable:"minecraft:entities/hoglin",PersistenceRequired:1b,IsImmuneToZombification:1b,Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.2d}],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon minecraft:strider -154 15 -179 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon minecraft:strider -155 15 -188 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon minecraft:strider -155 15 -188 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run summon minecraft:strider -155 15 -188 {PersistenceRequired:1,Passengers:[],Tags:["newNetherMob"]}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run scoreboard players operation @e[tag=newNetherMob] netherID = id edgeI
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run tag @e remove newNetherMob
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsP] if score @s Temp matches 1 run tag @s add nsP


execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsQ] store result score @s Temp run setblock -144 0 -176 stone
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsQ] if score @s Temp matches 1 run setblock -144 0 -176 air
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsQ] if score @s Temp matches 1 run kill @e[tag=piglin7]
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsQ] if score @s Temp matches 1 if score quest Stats matches 8 run summon armor_stand -137 17 -172 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":489,"minecraft:unbreakable":{}}}],Tags:["char","piglin7"],Rotation:[110.0f,0.0f],CustomName:'{"translate":"piglin7","color":"light_purple"}',CustomNameVisible:1}
execute as @e[type=area_effect_cloud,tag=netherSetup,tag=!nsQ] if score @s Temp matches 1 run tag @s add nsQ