execute if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcTempTarget] tbcSel 1
tag @e[tag=tbcEnemy] remove tbcTempTarget