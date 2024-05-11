function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/spider_cave
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/zombie_dirty
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/spawner_zombie

function glarth:combat/start

scoreboard players set @a MusicSet 61