# Forceload
forceload add 366 -96 394 -68

# Player Pos x3
summon minecraft:area_effect_cloud 382 37 -84 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos1"]}
summon minecraft:area_effect_cloud 379 37 -83 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos2"]}
summon minecraft:area_effect_cloud 385 37 -82 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPlayer","tbcMarkerPos3"]}
# Player PoV x3
summon minecraft:area_effect_cloud 382 40 -88 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov1"]}
summon minecraft:area_effect_cloud 379 40 -87 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov2"]}
summon minecraft:area_effect_cloud 385 40 -86 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPov","tbcMarkerPov3"]}

# Middle
summon minecraft:area_effect_cloud 382 37 -79 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddle"]}
summon minecraft:area_effect_cloud 385 37 -78 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}
summon minecraft:area_effect_cloud 379 37 -78 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerMiddleB"]}

# Enemies
summon minecraft:area_effect_cloud 382 37 -75 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy1"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 384 37 -75 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy2"],Rotation:[180f,0f]}
summon minecraft:area_effect_cloud 380 37 -75 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerEnemy","tbcMarkerEnemy3"],Rotation:[180f,0f]}

scoreboard players set maxEnemies tbcStats 3

# Companions
scoreboard players set compPos tbcStats -1
summon minecraft:area_effect_cloud 382 37 -88 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB1"]}
summon minecraft:area_effect_cloud 381 37 -90 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB2"]}
summon minecraft:area_effect_cloud 383 37 -90 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB3"]}

# Ally
summon minecraft:area_effect_cloud 391 41 -77 {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerAlly"]}

# Arena
execute positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena
scoreboard players set forceRot tbcStats 1