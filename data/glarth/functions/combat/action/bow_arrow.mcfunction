execute at @e[tag=tbcSelPlayerAS] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1
scoreboard players add attackSuccess tbcStats 1
tag @s add tbcArrowPlace
scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute at @e[tag=tbcSelPlayerAS] run tag @e[tag=tbcEnemy,distance=..50,tag=!tbcUnselectable,tag=!tbcBlock] add rand_sel
scoreboard players set enemiesBow tbcStats 0
execute as @e[tag=rand_sel] run scoreboard players add enemiesBow tbcStats 1

## Durablity
execute at @e[tag=tbcSelPlayerAS] run function glarth:combat/remove/bow
execute at @e[tag=tbcSelPlayerAS] run function glarth:combat/remove/arrow

## Arrows
execute if score attackArrows tbcStats matches 1 run function glarth:util/rand_sel/1
execute if score attackArrows tbcStats matches 1 run scoreboard players set @e[limit=1,tag=rand_sel_result] tbcSel 1
execute if score attackArrows tbcStats matches 2 run function glarth:util/rand_sel/2
execute if score attackArrows tbcStats matches 3 run function glarth:util/rand_sel/3
execute if score attackArrows tbcStats matches 2..3 run scoreboard players set @e[limit=1,tag=rand_sel_result_1] tbcSel 1

# Summon Arrow
execute if score enemiesBow tbcStats matches 1.. at @e[tag=tbcSelPlayerAS] run summon minecraft:armor_stand ^0.3 ^0.5 ^0.3 {ArmorItems:[{},{},{},{id:"arrow",Count:1}],Small:1,Pose:{Head:[90f,45f,-90f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrowPN"]}
execute if score enemiesBow tbcStats matches 1.. as @e[tag=tbcArrowPN] at @s run tp @s ~ ~ ~ facing entity @e[scores={tbcSel=1},limit=1]
execute if score enemiesBow tbcStats matches 1.. run tag @e[tag=tbcArrowPN] remove tbcArrowPN

# New Target (#2)
scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @e[limit=1,tag=rand_sel_result_2] tbcSel 1

# Summon Arrow #2
execute if score attackArrows tbcStats matches 2.. if score enemiesBow tbcStats matches 2.. at @e[tag=tbcSelPlayerAS] run summon minecraft:armor_stand ^0.3 ^0.5 ^0.0 {ArmorItems:[{},{},{},{id:"arrow",Count:1}],Small:1,Pose:{Head:[90f,45f,-90f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrowPN"]}
execute if score attackArrows tbcStats matches 2.. if score enemiesBow tbcStats matches 2.. as @e[tag=tbcArrowPN] at @s run tp @s ~ ~ ~ facing entity @e[scores={tbcSel=1},limit=1]
execute if score attackArrows tbcStats matches 2.. if score enemiesBow tbcStats matches 2.. run tag @e[tag=tbcArrowPN] remove tbcArrowPN

# New Target (#3)
scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @e[limit=1,tag=rand_sel_result_3] tbcSel 1

# Summon Arrow #3
execute if score attackArrows tbcStats matches 3.. if score enemiesBow tbcStats matches 3.. at @e[tag=tbcSelPlayerAS] run summon minecraft:armor_stand ^0.3 ^0.5 ^-0.3 {ArmorItems:[{},{},{},{id:"arrow",Count:1}],Small:1,Pose:{Head:[90f,45f,-90f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrowPN"]}
execute if score attackArrows tbcStats matches 3.. if score enemiesBow tbcStats matches 3.. as @e[tag=tbcArrowPN] at @s run tp @s ~ ~ ~ facing entity @e[scores={tbcSel=1},limit=1]
execute if score attackArrows tbcStats matches 3.. if score enemiesBow tbcStats matches 3.. run tag @e[tag=tbcArrowPN] remove tbcArrowPN