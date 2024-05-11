#71 Mark | Shovel to Repeater
function glarth:dialogue/marhjo/lines/trade1
give @s repeater
setblock 30 26 -172 air destroy
data merge entity @e[tag=marhjo,type=armor_stand,limit=1] {Pose:{Head:[0f,0f,0f]},Rotation:[90f,0f]}
execute as @e[tag=marhjo,type=armor_stand] at @s run tp @s ~-0.5 ~ ~
tag @e[tag=marhjo,type=armor_stand] add a
scoreboard players set marhjoSaved Stats 1