## 
## Banners
##
# Butcher
clone 1 18 -213 1 18 -214 1 31 -213
# Observatory
clone -83 19 -245 -83 18 -245 -82 42 -246

##
## Swamp Torches
##
setblock -36 27 -136 minecraft:magenta_candle[candles=4,lit=true,waterlogged=false]
setblock -47 28 -135 minecraft:magenta_candle[candles=4,lit=true,waterlogged=false]
setblock -42 27 -154 minecraft:magenta_candle[candles=4,lit=true,waterlogged=false]
setblock -54 27 -144 minecraft:magenta_candle[candles=4,lit=true,waterlogged=false]

## Farm Block
setblock 8 26 -262 oak_log

##
## Skeleton Skulls
##
clone -78 38 -243 -78 38 -243 -78 40 -243
clone -3 24 -216 -3 24 -216 -3 26 -216
clone 8 24 -185 8 24 -185 8 26 -185

##
## Green Torches
##
kill @e[tag=halloweenTorch]
summon minecraft:armor_stand -90 50 -242 {Invisible:1,Marker:1,Tags:["halloweenTorch","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}]}
summon minecraft:armor_stand -82 50 -237 {Invisible:1,Marker:1,Tags:["halloweenTorch","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}]}
summon minecraft:armor_stand -86 51 -235 {Invisible:1,Marker:1,Tags:["halloweenTorch","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}]}
summon minecraft:armor_stand -85 44 -242 {Invisible:1,Marker:1,Tags:["halloweenTorch","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:238}}]}
setblock -90 50 -242 lantern[hanging=false]
setblock -82 50 -237 lantern[hanging=false]
setblock -86 51 -235 lantern[hanging=false]
setblock -85 44 -242 lantern[hanging=false]

setblock -88 42 -247 air
setblock -82 42 -236 air
setblock -92 42 -237 air
setblock -93 44 -242 air

##
## Creepy Jars
##
clone 16 24 -212 14 24 -212 14 27 -213
clone 24 25 -206 24 25 -206 24 27 -206

##
## Entity
##
kill @e[tag=hEntity]
# Observatory
summon zombie -71 39.0 -249 {Silent:1b,NoAI:1,PersistenceRequired:1,Tags:["hEntity"],Invulnerable:1,Rotation:[40f,0f],CustomName:'"Dinnerbone"',Passengers:[{id:"armor_stand",Marker:1,Invisible:1,Tags:["hEntity"]}]}
summon minecraft:armor_stand -71 38.55 -248 {Tags:["hEntity","hEntitySkull","fire","asLoader"],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"zombie_head",Count:1}],Rotation:[135f,0f]}

##
## Graves
##
kill @e[tag=die2NN,type=armor_stand]
# Observatory Graves
summon minecraft:armor_stand -78 40 -247 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -78 40 -245 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -79 40 -249 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -81 40 -248 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -72 40 -247 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[125f,0f],Marker:1}
summon minecraft:armor_stand -71 40 -251 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -73 39 -252 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[90f,0f],Marker:1}
summon minecraft:armor_stand -76 38 -254 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[0f,0f],Marker:1}
summon minecraft:armor_stand -78 38 -252 {Tags:["die2","die2NN","asLoader"],Invisible:1,Rotation:[0f,0f],Marker:1}

##
## Magic Light
##
# Light
kill @e[tag=magicLight,type=armor_stand]
summon minecraft:armor_stand -86 53 -241 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:187}}],Tags:["magicLight","magicLightA","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
summon minecraft:armor_stand -86 53 -241 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:187}}],Tags:["magicLight","magicLightB","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
summon minecraft:armor_stand 57 43 -126 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:187}}],Tags:["magicLight","magicLightA","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
summon minecraft:armor_stand 57 43 -126 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:187}}],Tags:["magicLight","magicLightB","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
summon minecraft:armor_stand -55.5 34.0 -135.00 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:188}}],Tags:["magicLight","magicLightA","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
summon minecraft:armor_stand -56.5 34.0 -135.00 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:188}}],Tags:["magicLight","magicLightB","fire"],Marker:1,Invulnerable:1,Invisible:1,Fire:1000s}
# Druid Green
kill @e[tag=druidGreen,type=armor_stand]
summon minecraft:armor_stand 51 36.45 -131 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:190}}],Invulnerable:1,NoGravity:1,Tags:["campfire","druidGreen"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Marker:1}
summon minecraft:armor_stand 51 38 -131 {Marker:1,Invisible:1,Tags:["greenFire","druidGreen"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:189}}],Marker:1}
setblock 51 38 -131 minecraft:lantern[hanging=false]
# Witch Green
setblock -56 35 -134 minecraft:lantern[hanging=false]

##
## Webs
##
kill @e[tag=cWeb,type=armor_stand]
summon minecraft:armor_stand 2.25 27 -214.3 {Invisible:1,Marker:1,Tags:["cWeb","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:193}}],Rotation:[-125f,0f],Pose:{Head:[40f,0f,0f]}}
summon minecraft:armor_stand -81.2 40.85 -248.3 {Invisible:1,Marker:1,Tags:["cWeb","fire","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:192}}],Rotation:[-70f,0f],Pose:{Head:[0f,20f,90f]}}
summon minecraft:armor_stand -78.55 43 -238.15 {Invisible:1,Marker:1,Tags:["cWeb","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:193}}],Rotation:[20f,0f],Pose:{Head:[-9f,0f,0f]}}
summon minecraft:armor_stand 29.0 27.5 -198.4 {Invisible:1,Marker:1,Tags:["cWeb","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:192}}],Rotation:[0f,0f],Pose:{Head:[8f,0f,0f]}}
summon minecraft:armor_stand 13.55 27 -200.7 {Invisible:1,Marker:1,Tags:["cWeb","asLoader"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:191}}],Rotation:[35f,0f],Pose:{Head:[55f,0f,0f]}}

##
## Planks
##
kill @e[type=armor_stand,tag=hPlanks]
# Mayor
summon minecraft:armor_stand 11 27 -184 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand 11.3 28 -184 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,10f]}}
summon minecraft:armor_stand 3 27.6 -184 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-5f]}}
summon minecraft:armor_stand 1 27.3 -178.9 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-25f]}}
summon minecraft:armor_stand 1 28 -180.4 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand 1 32.5 -180.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-30f]}}
summon minecraft:armor_stand 13 27.7 -180.4 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,0f]}}
summon minecraft:armor_stand 13 27.0 -180.4 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,2f]}}
# Church
summon minecraft:armor_stand -5.3 27.5 -189 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,60f]}}
summon minecraft:armor_stand -3.7 27.5 -188.45 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-60f]}}
summon minecraft:armor_stand -8.2 28.7 -189 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-20f]}}
summon minecraft:armor_stand -8.7 27.6 -189 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,10f]}}
summon minecraft:armor_stand -14 32 -193 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[180f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,5f]}}
# Observatory
summon minecraft:armor_stand -79 44 -242 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,2f]}}
summon minecraft:armor_stand -78.55 49.8 -241 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-30f]}}
summon minecraft:armor_stand -78.50 50.3 -240.1 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,20f]}}
summon minecraft:armor_stand -78.45 50.9 -240.6 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:200}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,-15f]}}
summon minecraft:armor_stand -78.47 50.45 -241.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:201}}],Rotation:[-90f,0f],Tags:["hPlanks","asLoader"],Invisible:1,Marker:1,Pose:{Head:[0f,0f,70f]}}

##
## Scarecrows
##
kill @e[type=armor_stand,tag=halloweenSC]
# Dancing
summon minecraft:armor_stand 10 24.7 -189 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[135f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand 5 24.7 -218 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[-40f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -39 24.7 -141 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[-30f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -30 25.7 -140 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[15f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand 7 24.7 -264 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -77 38.7 -239 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC1","fire"],Rotation:[180f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
# Spinning
summon minecraft:armor_stand 17 24.7 -200 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC2","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand 23 25.7 -151 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC2","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -56 24.7 -145 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC2","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -51 24.7 -130 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC2","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}
summon minecraft:armor_stand -43 24.7 -152 {Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],Tags:["asLoader","halloweenSC","halloweenSC2","fire"],Rotation:[0f,0f],Pose:{Head:[0.0f,0.01f,0.0f]}}


##
## Pumpkins
##
kill @e[type=armor_stand,tag=halloweenJOL]
# Spawn
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 3 27 -190 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -204 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 23 28 -207 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -8 27 -175 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 3 27 -201 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 8 27 -198 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 20 28 -202 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -13 27 -200 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 20 27 -193 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 1 27 -186 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -218 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11 27 -201 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 16 27 -173 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 32 27 -184 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -6 27 -202 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 14 27 -199 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 5 27 -195 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 2 27 -210 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 7 27 -172 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -77 40 -249 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -81 37 -255 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -73 40 -254 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -73 41 -245 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -75 41 -241 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -83 43 -235 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -90 50 -240 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -37 27 -133 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -43 26 -141 {Tags:["asLoader","halloweenJOL","fire"]}
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -43 28 -196 {Tags:["asLoader","halloweenJOL","fire"]}
# Correct
execute unless score lowGraphics Stats matches 1 as @e[tag=halloweenJOL] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"carved_pumpkin",Count:1}],NoGravity:1,Invisible:1,Invulnerable:1,Marker:1}
execute unless score lowGraphics Stats matches 1 as @e[tag=halloweenJOL] at @s facing entity @e[tag=char,type=armor_stand,sort=nearest,limit=1,distance=5..] eyes rotated ~180 0 run tp @s ~ ~-1.425 ~ ~ ~