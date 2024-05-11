# Forceload
forceload add 304 -93 331 -70

# undo autumn
fill 318 29 -74 333 46 -91 minecraft:oak_leaves replace minecraft:birch_leaves

# Player Pos x3
summon minecraft:area_effect_cloud 320 31 -78 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 323 31 -77 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 317 31 -77 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 320 33 -76 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 323 33 -75 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 317 33 -75 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 320 31 -81 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 322 31 -81 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 318 31 -81 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 320 31 -86 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 324 31 -85 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 316 31 -85 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}


scoreboard players set maxEnemies tbcStats 3