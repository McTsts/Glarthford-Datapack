# Forceload
forceload add 402 -42 437 -73

# Player Pos x3
summon minecraft:area_effect_cloud 415 35 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 415 35 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos1","tbcMarkerPhanterra"]}
summon minecraft:area_effect_cloud 415 35 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 415 35 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos2","tbcMarkerPhanterra"]}
summon minecraft:area_effect_cloud 415 35 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
summon minecraft:area_effect_cloud 415 35 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos3","tbcMarkerPhanterra"]}
# Player PoV x3
summon minecraft:area_effect_cloud 412 38 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 412 38 -53 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 412 38 -59 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 421 35 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 421 35 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraMiddle","tbcMarkerPhanterra"]}
summon minecraft:area_effect_cloud 419 35 -58 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 419 35 -58 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraMiddleB","tbcMarkerPhanterra"]}
summon minecraft:area_effect_cloud 419 35 -54 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 419 35 -54 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraMiddleB","tbcMarkerPhanterra"]}

# Enemies
summon minecraft:area_effect_cloud 427 35 -56 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 421 35 -60 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 421 35 -52 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 420 35 -62 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy4"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 420 35 -50 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy5"],Rotation:[180f,0f]}

scoreboard players set maxEnemies tbcStats 5