function glarth:combat/init

function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/zombie_ender
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/enderman

function glarth:combat/start

scoreboard players set @a MusicSet 33