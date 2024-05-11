# Forceload
forceload add 304 -158 332 -130

# Player Pos x3
summon minecraft:area_effect_cloud 323 28 -144 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 322 28 -147 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 322 28 -141 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 325 30 -144 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 324 30 -147 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 324 30 -141 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 318 28 -144 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 318 28 -142 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 318 28 -146 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 312 28 -144 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 313 28 -141 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 313 28 -147 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 314 28 -143 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy4"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 314 28 -145 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy5"],Rotation:[180f,0f]}



scoreboard players set maxEnemies tbcStats 5