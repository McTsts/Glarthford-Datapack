function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
function glarth:combat/init_tbc/enemy4
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/drowned
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/drowned
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/drowned
execute as @e[tag=tbcEnemy4] run function glarth:combat/entity/squid

function glarth:combat/start

scoreboard players set @a MusicSet 45