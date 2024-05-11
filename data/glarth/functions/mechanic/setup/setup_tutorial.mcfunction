function glarth:mechanic/setup_all
gamerule doTileDrops true
scoreboard players set @a MusicSet 21

# MrK Barriers
setblock 79 29 -209 barrier
setblock 78 29 -210 minecraft:barrier
setblock 77 29 -211 minecraft:barrier
setblock 76 28 -211 minecraft:barrier

# Schedule VA/Music Tip + Chat Tip
schedule function glarth:mechanic/tip/24 600t
schedule function glarth:mechanic/tip/46 1200t

# Characters
summon armor_stand 71 26 -201 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:52,Unbreakable:1}}],Tags:["char","explorer2","sleep"],Rotation:[-65f,0f],CustomName:"{\"translate\":\"explorer\",\"color\":\"gold\"}",CustomNameVisible:1}
summon armor_stand 82 20 -197 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:176,Unbreakable:1}}],Tags:["char","miner_chief","miner_light"],Rotation:[-20f,0f],CustomName:"{\"translate\":\"miner_chief\",\"color\":\"gray\"}",CustomNameVisible:0}
summon armor_stand 84 16 -182 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:177,Unbreakable:1}}],Tags:["char","gunpowder_warden"],Rotation:[-135f,0f],CustomName:"{\"translate\":\"gunpowder_warden\",\"color\":\"dark_gray\"}",CustomNameVisible:1}
summon armor_stand 125 18.5 -217 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:178,Unbreakable:1}}],Tags:["char","bat","tbcLoc072"],Rotation:[65f,0f],CustomName:"{\"translate\":\"bat\",\"color\":\"black\"}",CustomNameVisible:1}
summon armor_stand 66 19 -191 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:179,Unbreakable:1}}],Tags:["char","sorcerer"],Rotation:[-90f,0f],CustomName:"{\"translate\":\"sorcerer\",\"color\":\"dark_purple\"}",CustomNameVisible:1}

# Decoration
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 76 24.45 -206 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:175}}],Invulnerable:1,Fire:1000s,NoGravity:1,Tags:["campfire","fire"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Marker:0}
execute unless score lowGraphics Stats matches 1 run setblock 76 26 -206 minecraft:lantern[hanging=false]
execute unless score lowGraphics Stats matches 0 run setblock 76 26 -206 minecraft:air

# Trapdoors
		summon minecraft:area_effect_cloud 81 20 -193 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 83 20 -192 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}

# Containers
clone 71 33 -199 71 33 -199 69 26 -199
clone 90 6 -171 90 6 -171 86 8 -174
clone 90 6 -173 90 6 -173 81 7 -175
clone 92 6 -172 92 6 -172 89 8 -176
clone 92 6 -174 92 6 -174 88 13 -178
clone 85 17 -208 85 17 -208 83 10 -207
clone 73 18 -185 73 18 -185 75 20 -193
clone 84 17 -209 84 17 -209 90 6 -208
scoreboard players set @a tutorialChest 0

# World
fill 74 23 -194 73 25 -195 air replace red_sand
fill 74 23 -194 73 25 -195 air replace light_gray_concrete_powder
fill 74 25 -194 73 25 -195 minecraft:gray_wool replace air
clone 65 28 -180 64 26 -181 73 26 -195
fill 81 21 -189 83 23 -189 minecraft:barrier
fill 86 20 -194 86 22 -195 minecraft:barrier
clone 102 22 -218 99 18 -220 104 20 -206

# Sand
setblock 95 3 -198 sand
setblock 94 3 -199 sand
setblock 98 4 -196 sand
fill 99 3 -195 99 3 -196 sand
fill 102 4 -209 103 4 -209 sand
fill 103 6 -211 103 5 -211 sand
fill 102 5 -210 102 5 -211 sand
fill 101 4 -211 101 5 -211 sand
fill 102 6 -212 101 6 -212 sand
fill 101 5 -212 100 5 -212 sand
fill 98 3 -195 98 3 -197 sand replace air
fill 101 4 -210 104 4 -210 sand replace air

# Bats
summon minecraft:bat 87 6 -183 {PersistenceRequired:1}
summon minecraft:bat 87 6 -183 {PersistenceRequired:1}
summon minecraft:bat 87 6 -183 {PersistenceRequired:1}
summon minecraft:bat 87 6 -183 {PersistenceRequired:1}
summon minecraft:bat 87 6 -183 {PersistenceRequired:1}

#Tutorial 
summon minecraft:area_effect_cloud 75 27.6 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.a\",\"color\":\"green\",\"bold\":true}",CustomNameVisible:1}
summon minecraft:area_effect_cloud 75 27.3 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.b\",\"color\":\"green\"}",CustomNameVisible:1}
summon minecraft:area_effect_cloud 75 27.0 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.c\",\"color\":\"green\"}",CustomNameVisible:1}
summon minecraft:area_effect_cloud 75 26.7 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.d\",\"color\":\"green\"}",CustomNameVisible:1}
summon minecraft:area_effect_cloud 75 26.4 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.e\",\"color\":\"green\"}",CustomNameVisible:1}
summon minecraft:area_effect_cloud 75 26.1 -205 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG1"],CustomName:"{\"translate\":\"tutorial.1.f\",\"color\":\"green\"}",CustomNameVisible:1}