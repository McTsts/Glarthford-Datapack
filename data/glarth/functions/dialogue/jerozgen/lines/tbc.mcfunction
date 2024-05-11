scoreboard players set r Random 2
function glarth:util/random
execute if score n Random matches 1 if entity @e[tag=tbcAllyJerozgen,tag=!1] run function glarth:dialogue/jerozgen/lines/tbc1
execute if score n Random matches 1 run tag @e[tag=tbcAllyJerozgen] add 1
execute if score n Random matches 2 if entity @e[tag=tbcAllyJerozgen,tag=!2] run function glarth:dialogue/jerozgen/lines/tbc2
execute if score n Random matches 2 run tag @e[tag=tbcAllyJerozgen] add 2