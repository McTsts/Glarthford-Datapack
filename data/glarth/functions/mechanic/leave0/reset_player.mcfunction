execute store result score @s ID run scoreboard players add $id ID 1
scoreboard players operation $left ID += @s ID
data modify storage glarth:main leave0 append from entity @s EnderItems[1].tag.name