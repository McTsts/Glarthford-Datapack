function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/bat_empress_alt

function glarth:combat/init_tbc/ally1
execute as @e[tag=tbcAlly1] run function glarth:combat/entity/miner_chief_alt

function glarth:combat/start

scoreboard players set @a MusicSet 52
execute as @a at @s run playsound boss2 hostile @s ~ ~ ~ 0.8 1

tag @a add encB0