function glarth:combat/init

function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/skeleton
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/skeleton_knight

function glarth:combat/start

scoreboard players set @a MusicSet 35