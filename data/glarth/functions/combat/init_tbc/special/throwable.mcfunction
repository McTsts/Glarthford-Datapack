function glarth:combat/init

function glarth:combat/init_tbc/enemy4
execute as @e[tag=tbcEnemy4] run function glarth:combat/entity/tree

function glarth:combat/init_tbc/ally1
execute as @e[tag=tbcAlly1] run function glarth:combat/entity/special_illusioner

scoreboard players set tbcUnlocked Stats 6

function glarth:combat/start

scoreboard players set @a MusicSet 21