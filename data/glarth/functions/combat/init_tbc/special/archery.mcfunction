function glarth:combat/init

function glarth:combat/init_tbc/enemy1
function glarth:combat/init_tbc/enemy2
function glarth:combat/init_tbc/enemy3
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/target
execute as @e[tag=tbcEnemy2] run function glarth:combat/entity/target
execute as @e[tag=tbcEnemy3] run function glarth:combat/entity/target

function glarth:combat/init_tbc/ally1
execute as @e[tag=tbcAlly1] run function glarth:combat/entity/bow_merchant

scoreboard players set tbcUnlocked Stats 4

function glarth:combat/start

scoreboard players set @a MusicSet 21