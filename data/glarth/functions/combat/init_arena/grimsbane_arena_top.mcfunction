# Forceload
forceload add 402 -42 437 -73

# Player Pos x3
summon minecraft:area_effect_cloud 415 54 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 415 54 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 415 54 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 412 56 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 412 56 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 412 56 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 419 54 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 417 54 -58 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 417 54 -54 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 427 54 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 422 54 -58 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 422 54 -54 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 420 54 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy4"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 420 54 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy5"],Rotation:[180f,0f]}

# Extra
clone 431 70 -49 405 70 -63 405 53 -63
setblock 421 57 -52 fire
setblock 421 57 -60 fire
summon minecraft:armor_stand 421 51.5 -60 {Invisible:1,Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1,Invulnerable:1,Tags:["tbc","tbcPillar1","tbcPillar"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:339}}],Rotation:[45f,0f]}
summon minecraft:armor_stand 421 51.5 -52 {Invisible:1,Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1,Invulnerable:1,Tags:["tbc","tbcPillar2","tbcPillar"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:339}}],Rotation:[135f,0f]}
summon minecraft:armor_stand 421 51.4375 -60 {Invisible:1,Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1,Invulnerable:1,Tags:["tbc","tbcPillarL1","tbcPillarL"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:340}}]}
summon minecraft:armor_stand 421 51.4375 -52 {Invisible:1,Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1,Invulnerable:1,Tags:["tbc","tbcPillarL2","tbcPillarL"],ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:340}}]}
setblock 412 55 -56 barrier
setblock 412 55 -53 barrier
setblock 412 55 -59 barrier
fill 411 41 -60 413 41 -52 minecraft:black_carpet

scoreboard players set maxEnemies tbcStats 5