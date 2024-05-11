function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/shulker_guardian

function glarth:combat/init_tbc/enemy2
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/end_crystal


function glarth:combat/start

scoreboard players set @a MusicSet 54