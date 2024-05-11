function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
function glarth:combat/init_tbc/enemy4
function glarth:combat/init_tbc/enemy5
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/roberto
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/roberto
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/roberto
execute as @e[tag=tbcEnemy4] run function glarth:combat/entity/roberto
execute as @e[tag=tbcEnemy5] run function glarth:combat/entity/roberto

function glarth:combat/init_tbc/ally1
execute as @e[tag=tbcAlly1] run function glarth:combat/entity/spouse

function glarth:combat/start

scoreboard players set @a MusicSet 28
execute as @a at @s run playsound boss1 hostile @s ~ ~ ~ 0.8 1