execute if score timer end matches 1 run scoreboard players set @a MusicSet 101

execute if score timer end matches 1 run summon minecraft:armor_stand -8.4 26 -196.7 {DisabledSlots:4144959,Rotation:[90f,0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[90f,0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[90f,0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[90f,0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[90f,0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
execute if score timer end matches 1 run tag @r[scores={playerid=1..3},gamemode=adventure] add endTemp
execute if score timer end matches 1 unless entity @a[tag=endTemp] run tag @r[gamemode=adventure] add endTemp
execute if score timer end matches 1 as @a[tag=endTemp] run loot replace entity @e[type=armor_stand,tag=charQ4,tag=end_scene] armor.head loot glarth:custom/skull
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data remove entity @s ArmorItems[3]
execute if score timer end matches 1 at @e[tag=charQB,tag=end_scene] as @a[tag=endTemp] run function glarth:mechanic/make_char
execute if score timer end matches 1 run data merge block 84 26 -123 {Text1:'""'}
execute if score timer end matches 1 run data merge block 84 26 -123 {Text1:'{"entity":"@p[tag=endTemp]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}'}
execute if score timer end matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=charQB,tag=end_scene] CustomName set from block 84 26 -123 Text1
execute if score timer end matches 1 run tag @a remove endTemp

execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon area_effect_cloud -4.0 28 -196 {Rotation:[90f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1 run summon armor_stand -15 26 -198 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:9,Unbreakable:1}}],Tags:["end_scene"],Rotation:[80f,0f],CustomName:"{\"translate\":\"baker\",\"color\":\"#FF8488\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -6 26 -198 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:10,Unbreakable:1}}],Tags:["end_scene"],Rotation:[85f,0f],CustomName:"{\"translate\":\"butcher\",\"color\":\"dark_red\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -17 26 -197 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:16,Unbreakable:1}}],Tags:["end_scene"],Rotation:[90f,0f],CustomName:"{\"translate\":\"guard\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -14 26 -193 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:5,Unbreakable:1}}],Tags:["end_scene"],Rotation:[100f,0f],CustomName:"{\"translate\":\"priest\",\"color\":\"white\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -6 26 -194 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:7,Unbreakable:1}}],Tags:["end_scene"],Rotation:[95f,0f],CustomName:"{\"translate\":\"richard\",\"color\":\"dark_aqua\"}",CustomNameVisible:1}
execute if score timer end matches 1 if score mayorHatless Stats matches 0 run summon armor_stand -12 26 -196 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:23,Unbreakable:1}}],Tags:["end_scene"],Rotation:[90f,0f],CustomName:"{\"translate\":\"mayor\",\"color\":\"#282828\"}",CustomNameVisible:1}
execute if score timer end matches 1 if score mayorHatless Stats matches 1 run summon armor_stand -12 26 -196 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:37,Unbreakable:1}}],Tags:["end_scene"],Rotation:[90f,0f],CustomName:"{\"translate\":\"mayor\",\"color\":\"#282828\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -16 26 -194 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:6,Unbreakable:1}}],Tags:["end_scene"],Rotation:[95f,0f],CustomName:"{\"translate\":\"blacksmith\",\"color\":\"#282828\"}",CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand -15 26 -195 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:35,Unbreakable:1}}],Tags:["end_scene"],Rotation:[105f,0f],CustomName:"{\"translate\":\"merchant2\",\"color\":\"dark_blue\"}",CustomNameVisible:1}
execute if score timer end matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -9 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}],Tags:["end_scene","wife3"],Rotation:[75f,0f],CustomName:"{\"translate\":\"wife\",\"color\":\"#FF8488\"}",CustomNameVisible:1 }
execute if score timer end matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -9 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:157,Unbreakable:1}}],Tags:["end_scene","wife3"],Rotation:[75f,0f],CustomName:"{\"translate\":\"husband\",\"color\":\"aqua\"}",CustomNameVisible:1}



execute if score timer end matches 170 run function glarth:dialogue/mayor/lines/end_9

execute if score timer end matches 40 run function glarth:mechanic/animation/gates/city/open_all
execute if score timer end matches 60 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 75 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 88 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 99 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 108 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 115 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 120 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 123 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 124 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 125 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 126 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 127 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 128 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 129 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 130 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 132 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 134 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 136 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 139 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 142 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 145 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 149 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 153 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 157 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 162 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 167 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 172 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 178 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 184 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 190 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 197 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 204 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 212 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 220 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score timer end matches 1..150 run function glarth:mechanic/animation/gates/city/move
execute if score timer end matches 1..170 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=-4.0,y=28,z=-196,distance=..1,limit=1] @s

execute if score timer end matches 250 run function glarth:mechanic/win
