function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
function glarth:combat/init_tbc/enemy4
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/creeper
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/charged_creeper
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/charged_creeper
execute as @e[tag=tbcEnemy4] run function glarth:combat/entity/corrupted_ent

function glarth:combat/start

scoreboard players set @a MusicSet 34