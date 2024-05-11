scoreboard players set @e[tag=tbcEnemy] tbcSel 0
tag @e[tag=tbcEnemy,sort=random,limit=1,tag=!tbcUnselectable,tag=!tbcBlock] add rand_sel
function glarth:util/rand_sel/1
scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1