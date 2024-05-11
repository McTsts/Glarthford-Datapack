# Forceload
forceload add 484 -46 471 -46

# Player Pos x3
summon minecraft:area_effect_cloud 482 43 -45 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 481 43 -48 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 481 43 -42 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 484 45 -45 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 483 45 -48 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 483 45 -42 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 476 43 -45 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 476 43 -43 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 476 43 -47 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 472 43 -45 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 471 43 -43 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 471 43 -47 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}

scoreboard players set maxEnemies tbcStats 3