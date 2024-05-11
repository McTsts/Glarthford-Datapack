function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/skeleton_knight
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/stray
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/skeleton

function glarth:combat/start

scoreboard players set @a MusicSet 7