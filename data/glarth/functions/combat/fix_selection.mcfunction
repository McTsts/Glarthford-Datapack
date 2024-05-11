tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
function glarth:util/rand_sel/1
scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @e[tag=rand_sel_result] tbcSel 1
function glarth:combat/selection