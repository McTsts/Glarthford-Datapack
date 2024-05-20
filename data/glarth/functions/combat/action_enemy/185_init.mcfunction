scoreboard players set @s tbcAttack 185
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.185","bold":true}]}]
function glarth:combat/attack_init

item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=394]
execute at @e[tag=tbcBoss] run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0.5 0.5 0.01 100
execute at @e[tag=tbcBoss] run particle explosion ~ ~0.5 ~ 0.5 0.5 0.5 0.01 10

tag @s remove tbcEnemy2
tag @s remove tbcEnemy3
tag @s add tbcEnemy1
tag @e remove tbcSelMarker
tag @e[tag=tbcMarkerEnemy1] add tbcSelMarker

execute at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..7] ~ ~ ~
execute at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..7] ~ ~ ~

effect give @a[gamemode=!creative] minecraft:blindness 1 0 true

execute as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100

# arena
function glarth:combat/action_enemy/helper/fix_ep_arena