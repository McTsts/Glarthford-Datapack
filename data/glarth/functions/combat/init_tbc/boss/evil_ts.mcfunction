function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/evil_ts


function glarth:combat/init_tbc/ally4
execute as @e[tag=tbcAlly4] run function glarth:combat/entity/ally_ts
function glarth:combat/init_tbc/ally5
execute as @e[tag=tbcAlly5] run function glarth:combat/entity/ally_gibbs
function glarth:combat/init_tbc/ally6
execute as @e[tag=tbcAlly6] run function glarth:combat/entity/ally_jerozgen
function glarth:combat/init_tbc/ally1
execute as @e[tag=tbcAlly1] run function glarth:combat/entity/ally_adri
function glarth:combat/init_tbc/ally2
execute as @e[tag=tbcAlly2] run function glarth:combat/entity/ally_suso


function glarth:combat/start

scoreboard players set @a MusicSet 62
execute as @a at @s run playsound boss4 hostile @s ~ ~ ~ 0.8 1

tag @a add encB10