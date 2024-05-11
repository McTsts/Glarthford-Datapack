# Speed
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcSpeed 4
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcSpeed 8
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcSpeed 10

# Vulnerable
scoreboard players remove @s tbcArmor 1000

# Display
data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute at @s run tp @s ~ ~0.7 ~
tag @s remove tbcDontUpdateLoc

# Tech Undo
tag @s remove tbcLonely
tag @s remove tbcUnselectable
tag @s remove stage_060

# Skip
tag @s add tbcIgnoreThis
function glarth:combat/action_enemy/057_init

# Music
scoreboard players set @a MusicSet 51