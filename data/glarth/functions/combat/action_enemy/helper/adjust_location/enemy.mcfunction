# Set Passenger Rotations
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.1f]}}
execute if entity @s[tag=!tbcAdjLocRev] store result entity @s Pose.Head[2] float 1 run scoreboard players get nextAngle tbcAdjLoc
execute if entity @s[tag=tbcAdjLocRev] store result entity @s Pose.Head[2] float -1 run scoreboard players get nextAngle tbcAdjLoc

# Position
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcAdjLoc"],Rotation:[90.0f,0.0f]}
execute store result entity @e[type=area_effect_cloud,tag=tbcAdjLoc,limit=1] Pos[0] double 0.01 run scoreboard players get cX tbcAdjLoc
execute store result entity @e[type=area_effect_cloud,tag=tbcAdjLoc,limit=1] Pos[1] double 0.01 run scoreboard players get cY tbcAdjLoc
execute store result entity @e[type=area_effect_cloud,tag=tbcAdjLoc,limit=1] Pos[2] double 0.01 run data get entity @s Pos[2] 100 

# Adjust for AS Pivot
scoreboard players set asAngle tbcAdjLoc -90
scoreboard players operation asAngle tbcAdjLoc += nextAngle tbcAdjLoc
execute store result entity @e[type=area_effect_cloud,tag=tbcAdjLoc,limit=1] Rotation[1] float 1 run scoreboard players get asAngle tbcAdjLoc
execute as @e[tag=tbcAdjLoc] at @s run tp @s ^ ^ ^1.5
execute as @e[tag=tbcAdjLoc] at @s run tp @s ~ ~-1.5 ~

# Teleport
execute at @e[type=area_effect_cloud,tag=tbcAdjLoc] run tp @s ~ ~ ~

# Reset
kill @e[tag=tbcAdjLoc]