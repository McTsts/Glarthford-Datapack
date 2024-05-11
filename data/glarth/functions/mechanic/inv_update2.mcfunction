scoreboard players reset @s invM
scoreboard players operation @s invM += @s invM1
scoreboard players operation @s invM += @s invM2
scoreboard players operation @s invM += @s invM3
scoreboard players operation @s invM += @s invM4
scoreboard players operation @s invM += @s invM5
scoreboard players operation @s invM += @s invM6
scoreboard players operation @s invM += @s invM7
scoreboard players operation @s invM += @s invM8
scoreboard players operation @s invM += @s invM9
scoreboard players operation @s invM += @s invM10
scoreboard players operation @s invM += @s invM11

execute if score @s invM matches 1.. run function glarth:mechanic/fix0/call
execute if score @s invM matches 1.. run tag @s remove inv_update