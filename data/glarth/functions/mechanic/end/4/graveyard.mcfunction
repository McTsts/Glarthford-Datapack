execute if score timer end matches 1 run scoreboard players set @a[gamemode=spectator] MusicSet 0
execute if score timer end matches 300 unless score time Dis matches 900.. run scoreboard players set @a[gamemode=spectator] MusicSet 101
execute if score timer end matches 300 if score time Dis matches 900.. run scoreboard players set @a[gamemode=spectator] MusicSet 104
execute if score timer end matches 1 if score time Dis matches 900.. run weather clear
execute if score timer end matches 1 if score time Dis matches 900.. run summon armor_stand 68 83 -105 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":5,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"priest","color":"white"}',CustomNameVisible:1,NoGravity:1}
#Baker
execute if score timer end matches 1 if score time Dis matches 900..1759 run summon armor_stand 72 83 -103 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":9,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[115.0f,0.0f],CustomName:'{"translate":"baker","color":"red"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1800.. run summon armor_stand 128 85.65 -119 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":9,"minecraft:unbreakable":{}}}],Tags:["end_scene"],NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1800.. run summon minecraft:armor_stand 128 87 -120 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#Richard
execute if score timer end matches 1 if score time Dis matches 900.. run summon armor_stand 73 83 -106 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":7,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[85.0f,0.0f],CustomName:'{"translate":"richard","color":"dark_aqua"}',CustomNameVisible:1,NoGravity:1}
#Lumberjack
execute if score timer end matches 1 if score time Dis matches 900..2059 run summon armor_stand 86 79 -116 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":3,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[60.0f,0.0f],CustomName:'{"translate":"lumberjack","color":"gold"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 2100.. run summon minecraft:armor_stand 142.68 86.50 -118.46 {ArmorItems:[{},{},{},{id:"iron_axe",count:1}],Pose:{Head:[0.0f,0.0f,-180.0f]},Rotation:[-20.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["axe","end_scene"],DisabledSlots:2039583}
execute if score timer end matches 1 if score time Dis matches 2100.. run summon minecraft:armor_stand 142 87 -120 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#Worker
execute if score timer end matches 1 if score time Dis matches 900..1959 run summon armor_stand 74 83 -102 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":12,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[115.0f,0.0f],CustomName:'{"translate":"worker","color":"gold"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 2000.. if entity @a[tag=workerB] run summon minecraft:armor_stand 133.1 79.3 -114.3 {ArmorItems:[{},{},{},{id:"bow",count:1}],Rotation:[-20.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["end_scene"],DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]}}
execute if score timer end matches 1 if score time Dis matches 2000.. if entity @a[tag=workerC] run summon minecraft:armor_stand 133.1 80.1 -113.7 {ArmorItems:[{},{},{},{id:"cookie",count:1}],Rotation:[-20.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["end_scene"],DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]},Small:1}
execute if score timer end matches 1 if score time Dis matches 2000.. if entity @a[tag=workerC] run summon minecraft:armor_stand 133.4 80.1 -114.2 {ArmorItems:[{},{},{},{id:"cookie",count:1}],Rotation:[-20.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["end_scene"],DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]},Small:1}
execute if score timer end matches 1 if score time Dis matches 2000.. run summon minecraft:armor_stand 134 81 -114 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Mayor
execute if score timer end matches 1 if score time Dis matches 900..1559 if score mayorHatless Stats matches 0 run summon armor_stand 72 83 -108 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":23,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[60.0f,0.0f],CustomName:'{"translate":"mayor","color":"#282828"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 900..1559 if score mayorHatless Stats matches 1 run summon armor_stand 72 83 -108 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":37,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[60.0f,0.0f],CustomName:'{"translate":"mayor","color":"#282828"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1600.. if score mayorHatless Stats matches 0 run summon armor_stand 133 79.6 -112 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":23,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-70.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1600.. run summon minecraft:armor_stand 134 81 -112 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Hermit
execute if score timer end matches 1 unless score time Dis matches 1400.. run setblock 133 81 -110 air
execute if score timer end matches 1 if score time Dis matches 1400.. run setblock 133 81 -110 potted_dandelion
execute if score timer end matches 1 if score time Dis matches 1400.. run summon minecraft:armor_stand 134 81 -110 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Digger
execute if score timer end matches 1 if score time Dis matches 900..2259 run summon armor_stand 75 83 -104 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":53,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[100.0f,0.0f],CustomName:'{"translate":"digger","color":"gray"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 2300.. run summon minecraft:armor_stand 133.7 80.35 -107.2 {ArmorItems:[{},{},{},{id:"iron_shovel",count:1}],Pose:{Head:[0.0f,0.0f,135.0f]},Rotation:[-100.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["end_scene"],DisabledSlots:2039583}
execute if score timer end matches 1 if score time Dis matches 2300.. run summon minecraft:armor_stand 134 81 -108 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Fisher
execute if score timer end matches 1 if score time Dis matches 900..1859 run summon armor_stand 74 83 -110 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":8,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[50.0f,0.0f],CustomName:'{"translate":"fisher","color":"#00A975"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1900.. run summon minecraft:armor_stand 140 87 -120 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
execute if score timer end matches 1 if score time Dis matches 1900.. run summon minecraft:armor_stand 140.1 85.3 -119.3 {ArmorItems:[{},{},{},{id:"fishing_rod",count:1}],Rotation:[-20.0f,0.0f],NoGravity:1,Invisible:1,Marker:1,Tags:["end_scene"],DisabledSlots:2039583,Pose:{Head:[90.0f,0.0f,0.0f]}}
#Merchant 1
execute if score timer end matches 1 if score time Dis matches 900..2159 run summon armor_stand 56 60 114 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":36,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-35.0f,0.0f],CustomName:'{"translate":"merchant1","color":"red"}',CustomNameVisible:1,NoGravity:1}
#Mourner
execute if score timer end matches 1 if score time Dis matches 900..2159 run summon armor_stand 72 83 -100 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":50,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[140.0f,0.0f],CustomName:'{"translate":"mourner","color":"gray"}',CustomNameVisible:1,NoGravity:1}
#McTsts
execute if score timer end matches 1 if score time Dis matches 1500..1859 run summon armor_stand 126 93 -124 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":1,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"mctsts","color":"green"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if score time Dis matches 1900.. run summon minecraft:armor_stand 140 93 -125 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Merchant 2
execute if score timer end matches 1 if score time Dis matches 1700..2259 run summon armor_stand 137 93 -124 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":35,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"merchant2","color":"dark_blue"}',CustomNameVisible:1,NoGravity:1}
#Brewer
execute if score timer end matches 1 if score time Dis matches 1700.. run summon minecraft:armor_stand 137 93 -127 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#Uncle
execute if score timer end matches 1 if score time Dis matches 2200.. run summon minecraft:armor_stand 135 93 -127 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#Blacksmith
execute if score timer end matches 1 if score time Dis matches 2200.. run summon minecraft:armor_stand 133 93 -127 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#marhjo
execute if score timer end matches 1 if score time Dis matches 1500.. run summon minecraft:armor_stand 128 93 -127 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#EnderPig
execute if score timer end matches 1 if score time Dis matches 1400.. run summon minecraft:armor_stand 126 93 -127 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
execute if score timer end matches 1..400 if score time Dis matches 1400.. run particle portal 126 92.7 -126 0.2 0.1 0.2 0 10
#Evoker
execute if score timer end matches 1 if score time Dis matches 2200.. run summon minecraft:armor_stand 142 81 -114 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
#Witch
execute if score timer end matches 1 if score time Dis matches 2100.. run summon minecraft:armor_stand 138 87 -120 {Tags:["die2","end_scene"],Invisible:1,Rotation:[0.0f,0.0f]}
execute if score timer end matches 1 if score time Dis matches 2100.. run fill 138 86 -120 138 86 -119 minecraft:mycelium
execute if score timer end matches 1 unless score time Dis matches 2100.. run fill 138 86 -120 138 86 -119 minecraft:coarse_dirt
#Empty Graves
execute if score timer end matches 1 if score time Dis matches 900.. run summon minecraft:armor_stand 137 81 -114 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
execute if score timer end matches 1 if score time Dis matches 900.. run summon minecraft:armor_stand 137 81 -112 {Tags:["die2","end_scene"],Invisible:1,Rotation:[90.0f,0.0f]}
#Priest Lines
execute if score timer end matches 410 if score time Dis matches 900.. run function glarth:dialogue/priest/lines/end_4
#Evoker Resurrect
execute if score timer end matches 350 if score time Dis matches 2200.. run particle minecraft:totem_of_undying 142 81 -113 0.3 0.3 0.3 0.3 30
execute if score timer end matches 350 if score time Dis matches 2200.. as @a at @s run playsound minecraft:item.totem.use voice @a 142 81 -113 1.7 1
execute if score timer end matches 350 if score time Dis matches 2200.. run summon armor_stand 142 78 -113 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":39,"minecraft:unbreakable":{}}}],Tags:["end_scene","evoker2"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"evoker","color":"gold"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 350..364 if score time Dis matches 2200.. as @e[tag=evoker2] at @s run tp @s ~ ~0.2 ~
#Alt Bum Scene
execute if score timer end matches 1 if score time Dis matches ..859 run summon armor_stand 71 81.8 -105 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":4,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-120.0f,0.0f],CustomName:'{"translate":"bum","color":"#8C5800"}',CustomNameVisible:1,NoGravity:1,Pose:{Head:[-80.0f,0.0f,0.0f]}}
execute if score timer end matches 330 if score time Dis matches ..859 run function glarth:dialogue/bum/lines/end_4


# Crying
execute if score timer end matches 430 if score time Dis matches 900..2159 as @a at @s run playsound cry2 voice @s ~ ~ ~ 0.3 1 0.3
execute if score timer end matches 465 if score time Dis matches 900..2259 as @a at @s run playsound cry1 voice @s ~ ~ ~ 1 1 1
execute if score timer end matches 410 if score time Dis matches 900..2159 as @a at @s run playsound cry3 voice @s ~ ~ ~ 0.3 1 0.3
execute if score timer end matches 435 if score time Dis matches 900..2159 as @a at @s run playsound cry2 voice @s ~ ~ ~ 0.3 1 0.3
execute if score timer end matches 470 if score time Dis matches 900..2259 as @a at @s run playsound cry1 voice @s ~ ~ ~ 1 1 1
execute if score timer end matches 495 if score time Dis matches 900..2159 as @a at @s run playsound cry3 voice @s ~ ~ ~ 0.3 1 0.3

# Clear Weather
execute if score timer end matches 550 run weather clear

#Die
execute if score timer end matches 1 as @e[tag=die2] at @s run function glarth:mechanic/action/die2