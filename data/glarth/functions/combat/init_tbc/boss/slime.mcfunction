function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/vishnold

function glarth:combat/start

scoreboard players set @a MusicSet 28
execute as @a at @s run playsound boss1 hostile @s ~ ~ ~ 0.8 1

tag @a add encB5