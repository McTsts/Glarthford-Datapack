# /scoreboard players set 10 Const 10
scoreboard players set r Random 20
function glarth:util/randomish
scoreboard players operation @s Animation = n Random
scoreboard players operation @s Animation *= 10 Const
scoreboard players add @s Animation 150
scoreboard players set @s dragonfly 100