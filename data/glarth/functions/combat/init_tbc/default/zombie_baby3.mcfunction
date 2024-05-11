function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/zombie_chicken
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/zombie_baby
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/zombie_baby

function glarth:combat/start

scoreboard players set @a MusicSet 32