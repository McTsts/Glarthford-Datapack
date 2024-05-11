function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/roberto

function glarth:combat/init_tbc/ally
execute as @e[tag=tbcAlly] run function glarth:combat/entity/spouse

function glarth:combat/start

scoreboard players set @a MusicSet 32
execute as @a at @s run playsound boss1 hostile @s ~ ~ ~ 0.8 1

tag @a add encB1