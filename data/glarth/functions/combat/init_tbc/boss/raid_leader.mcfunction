function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/raid_leader


function glarth:combat/start

scoreboard players set @a MusicSet 27
execute as @a at @s run playsound boss4 hostile @s ~ ~ ~ 0.8 1

tag @a add encB9