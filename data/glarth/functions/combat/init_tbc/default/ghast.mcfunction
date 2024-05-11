function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/ghast
summon minecraft:armor_stand 446 38.5 -142 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":264}}],Rotation:[90.0f,0.0f],Tags:["tbc","tbcGhastDis","tbcGhastDisModel"]}
summon minecraft:armor_stand 446 43.5 -142 {NoGravity:1,Tags:["tbc","tbcGhastDis"],CustomName:'{"translate":"tbc.enemy.ghast"}',CustomNameVisible:1}

function glarth:combat/start

scoreboard players set @a MusicSet 48