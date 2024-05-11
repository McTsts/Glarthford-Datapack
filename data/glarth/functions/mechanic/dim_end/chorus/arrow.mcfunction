execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute at @s positioned ^ ^ ^0.5 run summon item ~ ~-1 ~ {Item:{id:"gray_dye",Count:1,tag:{display:{Name:'{"translate":"item.minecraft.chorus_fruit","italic":false}'}}}}
execute at @s positioned ^ ^ ^0.5 run setblock ~ ~ ~ repeating_command_block[facing=down]{auto:1b,Command:"function glarth:mechanic/dim_end/chorus/flower"}
kill @s