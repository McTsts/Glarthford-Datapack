kill @e[tag=mill]
summon armor_stand 14 33 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:126}}],NoGravity:1,Rotation:[90f,0f],Pose:{Head:[90f,0f,0f]},Tags:["mill","mill_sail","mill1"],DisabledSlots:4144959,Invisible:1,Marker:1}
summon armor_stand 14 33 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:126}}],NoGravity:1,Rotation:[90f,0f],Pose:{Head:[90f,0f,0f]},Tags:["mill","mill_sail","mill2"],DisabledSlots:4144959,Invisible:1,Marker:1}
summon armor_stand 14 33 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:126}}],NoGravity:1,Rotation:[90f,0f],Pose:{Head:[90f,0f,0f]},Tags:["mill","mill_sail","mill3"],DisabledSlots:4144959,Invisible:1,Marker:1}
summon armor_stand 14 33 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:126}}],NoGravity:1,Rotation:[90f,0f],Pose:{Head:[90f,0f,0f]},Tags:["mill","mill_sail","mill4"],DisabledSlots:4144959,Invisible:1,Marker:1}
summon armor_stand 13 34.075 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:127}}],NoGravity:1,Rotation:[90f,0f],Pose:{Head:[90f,0f,0f]},Tags:["mill","mill_log","mill_rot"],DisabledSlots:4144959,Invisible:1,DisabledSlots:4144959,Marker:1}
summon armor_stand 20.4 34 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:180}}],NoGravity:1,Pose:{Head:[90f,0f,0f]},Rotation:[-90f,0f],Tags:["mill","mill_inner","mill_inner_upper","mill_rot"],Invisible:1,DisabledSlots:4144959,Marker:1}
summon armor_stand 19 31.5 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:181}}],NoGravity:1,Tags:["mill","mill_inner","mill_inner_middle","mill_up"],Invisible:1,DisabledSlots:4144959,Marker:1}
summon armor_stand 19 27 -234 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:182}}],NoGravity:1,Tags:["mill","mill_inner","mill_inner_lower","mill_up"],Invisible:1,DisabledSlots:4144959,Marker:1}
scoreboard players set @e[tag=mill1] mill 0
scoreboard players set @e[tag=mill2] mill 900
scoreboard players set @e[tag=mill3] mill 1800
scoreboard players set @e[tag=mill4] mill 2700
execute as @e[tag=mill] run function glarth:mechanic/animation/mill