# Forceload
forceload add 394 -34 369 -17

# Player Pos x3
summon minecraft:area_effect_cloud 380 31 -32 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 376 31 -31 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 384 31 -31 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 380 34 -34 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 376 34 -33 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 384 34 -33 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 380 31 -28 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 383 31 -27 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 377 31 -27 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 380 31 -24 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 384 31 -25 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 376 31 -25 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}

scoreboard players set maxEnemies tbcStats 3