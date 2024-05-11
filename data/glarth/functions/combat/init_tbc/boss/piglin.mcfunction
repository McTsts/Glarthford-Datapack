function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/piglin_normal

function glarth:combat/init_tbc/enemy2
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/piglin_warrior

function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/piglin_shaman

function glarth:combat/init_tbc/enemy4
execute as @e[tag=tbcEnemy4] run function glarth:combat/entity/piglin_architect


function glarth:combat/start

scoreboard players set @a MusicSet 50
execute as @a at @s run playsound boss3 hostile @s ~ ~ ~ 0.8 1

tag @a add encB8