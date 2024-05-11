execute as @e[type=arrow,tag=waterlogArrow] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run summon minecraft:falling_block ~0.5 ~ ~0.5 {Time:1,Tags:["waterlogFB"]}
execute as @e[type=arrow,tag=waterlogArrow] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run data modify entity @e[tag=waterlogFB,limit=1,sort=nearest] BlockState set from entity @s inBlockState
execute as @e[type=arrow,tag=waterlogArrow] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run setblock ~ ~ ~ stone 
execute as @e[type=arrow,tag=waterlogArrow] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run setblock ~ ~ ~ air
execute as @e[type=arrow,tag=waterlogArrow,tag=removeWaterlog] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run data modify entity @e[tag=waterlogFB,limit=1,sort=nearest] BlockState.Properties.waterlogged set value "false"
execute as @e[type=arrow,tag=waterlogArrow,tag=addWaterlog] at @s positioned ~-0.1 ~-0.1 ~-0.1 align xyz run data modify entity @e[tag=waterlogFB,limit=1,sort=nearest] BlockState.Properties.waterlogged set value "true"
kill @e[type=falling_block,tag=waterlogFB,nbt={BlockState:{Name:"minecraft:sand"}}]
kill @e[type=arrow,tag=waterlogArrow] 