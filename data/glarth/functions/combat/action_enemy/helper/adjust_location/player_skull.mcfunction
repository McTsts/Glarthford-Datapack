execute if score nextAngle tbcAdjLoc matches 10.. unless entity @s[tag=altSkull] run data modify entity @s HandItems[1] set from entity @s HandItems[0]
execute if score nextAngle tbcAdjLoc matches 10.. unless entity @s[tag=altSkull] run data modify entity @s HandItems[0] set value {}
execute if score nextAngle tbcAdjLoc matches 10.. unless entity @s[tag=altSkull] run tag @s add altSkull

execute if score nextAngle tbcAdjLoc matches ..9 if entity @s[tag=altSkull] run data modify entity @s HandItems[0] set from entity @s HandItems[1]
execute if score nextAngle tbcAdjLoc matches ..9 if entity @s[tag=altSkull] run data modify entity @s HandItems[1] set value {}
execute if score nextAngle tbcAdjLoc matches ..9 if entity @s[tag=altSkull] run tag @s remove altSkull