execute unless entity @e[tag=lobby_clock] run summon minecraft:armor_stand 160.25 23.3 -100 {ArmorItems:[{},{},{},{id:"clock",Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[90f,0f],NoGravity:1,Tags:["lobby","lobby_clock"],Marker:1}
execute unless entity @e[tag=lobby_brick1] run summon minecraft:armor_stand 159 25 -102 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],NoGravity:1,Marker:1,Tags:["lobby","lobby_brick1"]}
execute unless entity @e[tag=lobby_brick2] run summon minecraft:armor_stand 160.25 23.3 -102 {ArmorItems:[{},{},{},{}],Rotation:[90f,0f],Pose:{Head:[90f,0f]},NoGravity:1,Marker:1,Tags:["lobby","lobby_brick2"]}

execute if score noClock Stats matches 0 run data merge entity @e[tag=lobby_clock,limit=1] {ArmorItems:[{},{},{},{id:"clock",Count:1}]}
execute if score noClock Stats matches 1 run data merge entity @e[tag=lobby_clock,limit=1] {ArmorItems:[{},{},{},{}]}

execute if score lowGraphics Stats matches 0 run data merge entity @e[tag=lobby_brick1,limit=1] {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:103}}]}
execute if score lowGraphics Stats matches 0 run data merge entity @e[tag=lobby_brick2,limit=1] {ArmorItems:[{},{},{},{}]}
execute if score lowGraphics Stats matches 1 run data merge entity @e[tag=lobby_brick1,limit=1] {ArmorItems:[{},{},{},{}]}
execute if score lowGraphics Stats matches 1 run data merge entity @e[tag=lobby_brick2,limit=1] {ArmorItems:[{},{},{},{id:"brick",Count:1}]}