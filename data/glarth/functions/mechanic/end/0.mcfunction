execute if score timer end matches 1 run scoreboard players set @a MusicSet 100
execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon bat 81.90 20.60 -196.00
execute if score timer end matches 1 run summon bat 81.90 20.60 -196.00
execute if score timer end matches 1 run summon bat 81.90 20.60 -196.00
execute if score timer end matches 1 run summon bat 81.90 20.60 -196.00
execute if score timer end matches 1 run summon bat 84.17 20.23 -197.00
execute if score timer end matches 1 run summon bat 84.17 20.23 -197.00
execute if score timer end matches 1 run summon bat 84.17 20.23 -197.00
execute if score timer end matches 1 run summon bat 84.17 20.23 -197.00
execute if score timer end matches 1 run summon area_effect_cloud 84 25 -191 {Rotation:[145f,40f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1..150 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=84,y=25,z=-191,distance=..1,limit=1] @s
execute if score timer end matches 1 run summon armor_stand 82 20 -197 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:176,Unbreakable:1}}],Tags:["char","miner_chief","miner_light"],Rotation:[-20f,0f],CustomName:"{\"translate\":\"miner_chief\",\"color\":\"gray\"}",CustomNameVisible:0}
execute if score timer end matches 90 run function glarth:dialogue/miner_chief/lines/end_0
execute if score timer end matches 10 run summon bat 82 21 -190 {Motion:[0.0,0.0,-3.0]}
execute if score timer end matches 40 run summon bat 82 21 -190 {Motion:[0.0,0.0,-3.0]}
execute if score timer end matches 70 run summon bat 82 21 -190 {Motion:[0.0,0.0,-3.0]}
execute if score timer end matches 100 run summon bat 82 21 -190 {Motion:[0.0,0.0,-3.0]}
execute if score timer end matches 130 run summon bat 82 21 -190 {Motion:[0.0,0.0,-3.0]}

execute if score timer end matches 20 run summon bat 90 20 -195 {Motion:[-4.0,0.0,-0.3]}
execute if score timer end matches 50 run summon bat 90 20 -195 {Motion:[-4.0,0.0,-0.3]}
execute if score timer end matches 80 run summon bat 90 20 -195 {Motion:[-4.0,0.0,-0.3]}
execute if score timer end matches 110 run summon bat 90 20 -195 {Motion:[-4.0,0.0,-0.3]}
execute if score timer end matches 140 run summon bat 90 20 -195 {Motion:[-4.0,0.0,-0.3]}

execute if score timer end matches 30 run summon bat 82 33 -195 {Motion:[0.0,-7.0,0.0]}
execute if score timer end matches 60 run summon bat 82 33 -195 {Motion:[0.0,-7.0,0.0]}
execute if score timer end matches 90 run summon bat 82 33 -195 {Motion:[0.0,-7.0,0.0]}
execute if score timer end matches 120 run summon bat 82 33 -195 {Motion:[0.0,-7.0,0.0]}
execute if score timer end matches 150 run summon bat 82 33 -195 {Motion:[0.0,-7.0,0.0]}

execute if score timer end matches 150 run function glarth:mechanic/win
