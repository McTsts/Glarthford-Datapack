function glarth:combat/init

function glarth:combat/init_tbc/enemy1
execute as @e[tag=tbcEnemy1] run function glarth:combat/entity/skeleton_conjured

scoreboard players set @a MusicSet 32

function glarth:combat/start