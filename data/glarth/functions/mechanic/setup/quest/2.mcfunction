# Extra Characters
summon armor_stand 50 28 -130 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:20,Unbreakable:1}}],Tags:["char","girl","cnoc"],Rotation:[90f,0f],CustomName:"{\"translate\":\"girl\",\"color\":\"red\"}",CustomNameVisible:1}
setblock 52 28 -130 minecraft:air
summon armor_stand -6 26 -193 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:71,Unbreakable:1}}],Tags:["char","citizen"],Rotation:[-150f,0f],CustomName:"{\"translate\":\"citizen\",\"color\":\"gold\"}",CustomNameVisible:1}
summon armor_stand 92.2 26 -159 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:21,Unbreakable:1}}],Tags:["char","skeleton_king","tbcLoc062"],Rotation:[180f,0f],CustomName:"{\"translate\":\"skeleton_king\",\"color\":\"dark_gray\"}",CustomNameVisible:1,Rotation:[90f,0.0f]}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -10 26 -198 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}],Tags:["char","wife","char_look"],Rotation:[0f,0f],CustomName:"{\"translate\":\"wife\",\"color\":\"#FF8488\"}",CustomNameVisible:1 ,NoGravity:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -10 26 -198 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:157,Unbreakable:1}}],Tags:["char","husband","char_look"],Rotation:[0f,0f],CustomName:"{\"translate\":\"husband\",\"color\":\"aqua\"}",CustomNameVisible:1 ,NoGravity:1}
summon armor_stand 28 26 -194 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:73,Unbreakable:1}}],Tags:["char","uncle","char_look"],Rotation:[180f,0f],CustomName:"{\"translate\":\"uncle\",\"color\":\"gray\"}",CustomNameVisible:1}
summon armor_stand 135 32 -178 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:22,Unbreakable:1}}],Tags:["char","skeleton2","tbcLoc071"],Rotation:[0f,0f],CustomName:"{\"translate\":\"skeleton2\",\"color\":\"dark_gray\"}",CustomNameVisible:1}
summon armor_stand 156 39 -165 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:535,Unbreakable:1}}],Tags:["char","zombie2","tbcLoc071"],Rotation:[90f,0f],CustomName:"{\"translate\":\"zombie2\",\"color\":\"dark_green\"}",CustomNameVisible:1} 
summon armor_stand 4 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:228,Unbreakable:1}}],Tags:["char","trader"],Rotation:[-90f,0f],CustomName:"{\"translate\":\"trader\",\"color\":\"blue\"}",CustomNameVisible:1}
function glarth:mechanic/setup/extra/brother
function glarth:mechanic/setup/extra/characters_mines
function glarth:mechanic/setup/extra/monk
# Open Deep Mines
fill 102 34 -171 103 32 -173 air
# Make Miner a Char Look
tag @e[tag=miner] add char_look
# Deep Mines Portals
summon minecraft:armor_stand 138 36 -183.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 128 36 -181.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 123 32 -172.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 156 32 -174.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 133 37 -157 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 156.0 39 -171 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 139 37 -185.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 128.0 43 -175 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 133 46 -160.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 157.0 43 -172 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 161.0 43 -171 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 147 48 -189 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 91 20 -167.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 71 32 -179.0 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 159.5 36 -187.00 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
summon minecraft:armor_stand 68 48 -161 {ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:4144959,Marker:1,Tags:["q2_portal","asLoader"]}
# Party Flags
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7.0 29 -211 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:223}}],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7.0 29 -215 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:232}}],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 9.8 29 -211 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:224}}],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 9.8 29 -215 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:233}}],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 4.2 29 -210.365 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:233}}],Rotation:[180f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 4.2 29 -214.365 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:224}}],Rotation:[180f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -3 26.5 -179 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:228}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -3 26.5 -179 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:221}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -18 28 -193 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:225}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 25 30 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:225}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 24 30 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:226}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 27 30 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:226}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 28 30 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:227}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 27 32 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:226}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 28 32 -188 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:227}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 16 26.55 -190.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:221}}],Rotation:[-20f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7 28 -203 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:231}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 10 27.6 -206 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:230}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 4.0 27 -204.5 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:229}}],Rotation:[73f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -11 27.6 -196 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:230}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -16.1 27.6 -196 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:222}}],Rotation:[100f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]} 
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 16 27 -183 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:229}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 28 27 -180 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:229}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 25 27 -180 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:221}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -1 28 -183 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:225}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -2 28 -183 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:226}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -7 26.5 -179 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:228}}],Rotation:[90f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7 27.4 -183 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:222}}],Rotation:[0f,0f],Invisible:1,Marker:1,Tags:["party_flag","asLoader"]}
# Party Candles
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 3 27 -190 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:234}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -204 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:234}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 23 28 -207 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:234}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -8 27 -175 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:235}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 3 27 -201 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:235}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 8 27 -198 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:235}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 20 28 -202 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:235}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -13 27 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:236}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 20 27 -193 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:236}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 1 27 -186 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:236}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -218 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:236}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -201 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:237}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 16 27 -173 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:237}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 32 27 -184 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:237}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -6 27 -202 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:237}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 14 27 -199 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 5 27 -195 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 2 27 -210 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7 27 -172 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}],NoGravity:1,Invisible:1,Invulnerable:1,Tags:["party_torch"],Marker:1}
execute unless score lowGraphics Stats matches 1 as @e[tag=party_torch] run tag @s add asLoader
execute unless score lowGraphics Stats matches 1 as @e[tag=party_torch] at @s run setblock ~ ~ ~ lantern[hanging=false]
# Remove Fireworks
execute if score quest Stats matches 2 run setblock 6 26 -171 chest[facing=north]
# Hide Gravel Cave In
execute if score quest Stats matches 2 run fill 97 34 -170 99 32 -170 stone
execute if score quest Stats matches 2 run fill 99 34 -170 98 34 -170 minecraft:cobblestone
execute if score quest Stats matches 2 run setblock 97 32 -170 andesite
execute if score quest Stats matches 2 run setblock 97 32 -171 air


# Observatory Easteregg
function glarth:mechanic/setup/extra/empty_observatory


# gary #3
clone 53 21 -232 50 17 -240 22 19 -217
summon armor_stand 59 83 -113 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:348,Unbreakable:1}}],Tags:["char","gibbs","asLoaderOverwrite"],Rotation:[160f,0f],CustomName:"{\"translate\":\"gibbs\",\"color\":\"gray\"}",CustomNameVisible:1}