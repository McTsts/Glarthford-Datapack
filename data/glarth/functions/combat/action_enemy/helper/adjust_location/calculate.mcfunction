# temp hardcoded values
scoreboard players set pivX tbcAdjLoc 38250
scoreboard players set pivY tbcAdjLoc 3700

# 
# Calculation
# 
# curAngle = current angle (known)
# nextAngle = next angle (known)
# pivY = pivot Y (known)
# pivX = pivot X (known)
# y = y coordinates (known)
# x = x coordinates (known)
# h = current height (unknown)
# cY = next Y coordinates (unknown)
# cX = next X coordinates (unknown)
# r = distance from pivot (unknown)
# 
#
# h = y - pivY
# h/sin(curAngle)=r
# sin(nextAngle)*r+pivY=cY
# cos(nextAngle)*r+pivX=cX
#

# Undo Adjustment
execute as @s[tag=tbcPlayerAS] at @s run function glarth:combat/action_enemy/helper/adjust_location/player_undo
execute as @s[tag=tbcEnemy] at @s run function glarth:combat/action_enemy/helper/adjust_location/enemy_undo
execute as @s[tag=tbcAdjLocA1] at @s run function glarth:combat/action_enemy/helper/adjust_location/a1_undo
execute as @s[tag=tbcAdjLocA2] at @s run function glarth:combat/action_enemy/helper/adjust_location/a2_undo
execute as @s[tag=tbcAdjLocA3] at @s run function glarth:combat/action_enemy/helper/adjust_location/a3_undo
execute as @s[tag=tbcAdjLocA4] at @s run function glarth:combat/action_enemy/helper/adjust_location/a4_undo


## h = y - pivY
# y
execute store result score h tbcAdjLoc run data get entity @e[type=area_effect_cloud,tag=tbcAdjUndo,limit=1] Pos[1] 100
# y - pivY
scoreboard players operation h tbcAdjLoc -= pivY tbcAdjLoc


## h/sin(curAngle)=r
# sin(curAngle)
execute store result storage glarth:util sin_cos.in float 1 run scoreboard players get curAngle tbcAdjLoc
function glarth:util/sin_cos
execute store result score sinCurAngle tbcAdjLoc run data get storage glarth:util sin_cos.out.sin 100
# h/sin(curAngle)
scoreboard players operation r tbcAdjLoc = h tbcAdjLoc
scoreboard players operation r tbcAdjLoc *= 100 Const
scoreboard players operation r tbcAdjLoc *= 100 Const
scoreboard players operation r tbcAdjLoc /= sinCurAngle tbcAdjLoc
scoreboard players operation r tbcAdjLoc /= 100 Const
# r= x - pivX (0 Edge Case)
execute if score curAngle tbcAdjLoc matches 0 store result score r tbcAdjLoc run data get entity @e[type=area_effect_cloud,tag=tbcAdjUndo,limit=1] Pos[0] 100
execute if score curAngle tbcAdjLoc matches 0 run scoreboard players operation r tbcAdjLoc -= pivX tbcAdjLoc

## sin(nextAngle)*r+pivY=cY
# sin(nextAngle)
execute store result storage glarth:util sin_cos.in float 1 run scoreboard players get nextAngle tbcAdjLoc
function glarth:util/sin_cos
execute store result score cY tbcAdjLoc run data get storage glarth:util sin_cos.out.sin 100
# sin(nextAngle)*r
scoreboard players operation cY tbcAdjLoc *= r tbcAdjLoc
scoreboard players operation cY tbcAdjLoc /= 100 Const
# sin(nextAngle)*r+pivY
scoreboard players operation cY tbcAdjLoc += pivY tbcAdjLoc

## cos(nextAngle)*r+pivX=cX
# cos(nextAngle)
execute store result storage glarth:util sin_cos.in float 1 run scoreboard players get nextAngle tbcAdjLoc
function glarth:util/sin_cos
execute store result score cX tbcAdjLoc run data get storage glarth:util sin_cos.out.cos 100
# cos(nextAngle)*r
scoreboard players operation cX tbcAdjLoc *= r tbcAdjLoc
scoreboard players operation cX tbcAdjLoc /= 100 Const
# cos(nextAngle)*r+pivX
scoreboard players operation cX tbcAdjLoc += pivX tbcAdjLoc


# Handling
execute as @s[tag=tbcPlayerAS] at @s run function glarth:combat/action_enemy/helper/adjust_location/player
execute as @s[tag=tbcEnemy] at @s run function glarth:combat/action_enemy/helper/adjust_location/enemy
execute as @s[tag=tbcAdjLocA1] at @s run function glarth:combat/action_enemy/helper/adjust_location/a1
execute as @s[tag=tbcAdjLocA2] at @s run function glarth:combat/action_enemy/helper/adjust_location/a2
execute as @s[tag=tbcAdjLocA3] at @s run function glarth:combat/action_enemy/helper/adjust_location/a3
execute as @s[tag=tbcAdjLocA4] at @s run function glarth:combat/action_enemy/helper/adjust_location/a4

# Reset
kill @e[type=area_effect_cloud,tag=tbcAdjUndo]