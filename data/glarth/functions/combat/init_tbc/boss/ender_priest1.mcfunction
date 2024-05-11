function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/ender_priest1

function glarth:combat/init_tbc/ally
execute as @e[tag=tbcAlly] run function glarth:combat/entity/explorer

function glarth:combat/start

scoreboard players set @a MusicSet 54
execute as @a at @s run playsound boss3 hostile @s ~ ~ ~ 0.8 1