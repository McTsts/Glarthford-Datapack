execute as @e[scores={PickUpSapling=1..}] at @s run kill @e[tag=sapling_item]
execute as @e[scores={PickUpSapling=1..}] at @s run function glarth:mechanic/sapling/spawn
execute as @e[scores={PickUpSapling=1..}] at @s run function glarth:mechanic/sapling/spawn
execute as @e[scores={PickUpSapling=1..}] at @s run function glarth:mechanic/sapling/spawn
execute as @e[scores={PickUpSapling=1..}] at @s run function glarth:mechanic/sapling/spawn
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling"}}] run function glarth:mechanic/sapling/spawn
execute as @e[scores={PickUpSapling=1..}] at @s run scoreboard players reset @a PickUpSapling