# End Tag
tag @s[scores={action=1150}] remove f
tag @s[scores={action=1151}] add f
# Move Blacksmith
execute if score @s action matches 0..60 run function glarth:mechanic/action/blaze_coin/move1
execute if score @s action matches 1140..1200 run function glarth:mechanic/action/blaze_coin/move2
# Particles & Sounds
execute if score @s action matches 80..720 run function glarth:mechanic/action/blaze_coin/particle1
execute if score @s action matches 660..1140 run function glarth:mechanic/action/blaze_coin/particle2
# Move Others
execute if score @s action matches 600..625 run function glarth:mechanic/action/blaze_coin/other1
execute if score @s action matches 626..650 run function glarth:mechanic/action/blaze_coin/other2

# Spawn
execute as @s[scores={action=79}] at @s run kill @e[tag=b_bp]
execute as @s[scores={action=80}] at @s unless entity @e[tag=b_bp] run summon minecraft:armor_stand 22 26.35 -204.2 {ArmorItems:[{},{},{},{id:"blaze_powder",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_bp"],DisabledSlots:2039583}
execute as @s[scores={action=299}] at @s run kill @e[tag=b_c1]
execute as @s[scores={action=300}] at @s unless entity @e[tag=b_c1] run summon minecraft:armor_stand 22.2 26.3 -204.2 {ArmorItems:[{},{},{},{id:"coal",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_c1"],DisabledSlots:2039583}
execute as @s[scores={action=519}] at @s run kill @e[tag=b_c2]
execute as @s[scores={action=520}] at @s unless entity @e[tag=b_c2] run summon minecraft:armor_stand 22.8 26.3 -204.2 {ArmorItems:[{},{},{},{id:"coal",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_c2"],DisabledSlots:2039583}
execute as @s[scores={action=1069}] at @s run kill @e[tag=b_bc]
execute as @s[scores={action=1070}] at @s unless entity @e[tag=b_bc] run summon minecraft:armor_stand 22 26.6 -203.5 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":44}}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_bc"],DisabledSlots:2039583}

# Kill
execute as @s[scores={action=1139}] at @s unless entity @e[tag=b_bp] run summon minecraft:armor_stand 22.5 26.365625 -204.2 {ArmorItems:[{},{},{},{id:"blaze_powder",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_bp"],DisabledSlots:2039583}
execute as @s[scores={action=1140}] at @s run kill @e[tag=b_bp]
execute as @s[scores={action=800}] at @s unless entity @e[tag=b_c1] run summon minecraft:armor_stand 22.45 26.3 -204.2 {ArmorItems:[{},{},{},{id:"coal",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_c1"],DisabledSlots:2039583}
execute as @s[scores={action=801}] at @s run kill @e[tag=b_c1]
execute as @s[scores={action=1000}] at @s unless entity @e[tag=b_c2] run summon minecraft:armor_stand 22.55 26.3 -204.2 {ArmorItems:[{},{},{},{id:"coal",count:1}],Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1,Invulnerable:1,Invisible:1,Tags:["b_c2"],DisabledSlots:2039583}
execute as @s[scores={action=1001}] at @s run kill @e[tag=b_c2]




