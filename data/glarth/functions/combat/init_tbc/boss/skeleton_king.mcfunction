function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/skeleton_king

function glarth:combat/init_tbc/ally
execute as @e[tag=tbcAlly] run function glarth:combat/entity/archaeologist

function glarth:combat/start

scoreboard players set @a MusicSet 2
execute as @a at @s run playsound boss2 hostile @s ~ ~ ~ 0.8 1

tag @a add encB2