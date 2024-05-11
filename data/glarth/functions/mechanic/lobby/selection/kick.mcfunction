tp @s 163.0 24.0 -118.5
execute at @s run playsound minecraft:error master @s ~ ~ ~ 1 1.5
tellraw @s {"translate":"lobby.selection.error","color":"red"}