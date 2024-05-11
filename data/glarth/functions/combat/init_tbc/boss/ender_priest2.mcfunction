function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/ender_priest2

function glarth:combat/start

scoreboard players set @a MusicSet 36
execute as @a at @s run playsound boss3 hostile @s ~ ~ ~ 0.8 1

tag @a add encB4