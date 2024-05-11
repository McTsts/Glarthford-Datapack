execute if block -7 26 -133 chest run clone -6 26 -133 -7 26 -133 -30 3 -157
execute if block -7 26 -133 chest run clone -7 26 -131 -7 26 -131 -30 3 -155
scoreboard players set ship Animation 65
kill @e[tag=ship]
summon minecraft:armor_stand -12.0 30 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:197}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship5","shipl2","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -6.0 30 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:198}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship6","shipl2","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -6.0 36 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:199}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship7","shipl3","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand 0.0 30 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:200}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship8","shipl2","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}



summon minecraft:armor_stand 6.0 24 -131.0 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship1","shipl1","shipMove","2ship"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand 0.0 24 -131.0 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship2","shipl1","shipMove","2ship"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -6.0 24 -131.0 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship3","shipl1","shipMove","2ship"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -12.0 24 -131.0 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship4","shipl1","shipMove","2ship"],Invisible:1,Marker:1,DisabledSlots:4144959}

summon minecraft:armor_stand 6.0 24 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:193}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship1","shipl1","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand 0.0 24 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:194}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship2","shipl1","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -6.0 24 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:195}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship3","shipl1","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}
summon minecraft:armor_stand -12.0 24 -131.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:196}}],Rotation:[90f,0f],NoGravity:1,Tags:["ship","ship4","shipl1","shipMove"],Invisible:1,Marker:1,DisabledSlots:4144959}

scoreboard players set shipStatus Animation 0
scoreboard players set shipStatusModel Animation 0
scoreboard players set shipAnim Animation 0

function glarth:mechanic/animation/ship/next