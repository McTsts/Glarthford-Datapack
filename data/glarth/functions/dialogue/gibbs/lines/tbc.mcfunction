scoreboard players set r Random 3
function glarth:util/random
execute if score n Random matches 1 if entity @e[tag=tbcAllyGibbs,tag=!1] run function glarth:dialogue/gibbs/lines/tbc1
execute if score n Random matches 1 run tag @e[tag=tbcAllyGibbs] add 1
execute if score n Random matches 2 if entity @e[tag=tbcAllyGibbs,tag=!2] run function glarth:dialogue/gibbs/lines/tbc2
execute if score n Random matches 2 run tag @e[tag=tbcAllyGibbs] add 2
execute if score n Random matches 3 if entity @e[tag=tbcAllyGibbs,tag=!3] run function glarth:dialogue/gibbs/lines/tbc3
execute if score n Random matches 3 run tag @e[tag=tbcAllyGibbs] add 3