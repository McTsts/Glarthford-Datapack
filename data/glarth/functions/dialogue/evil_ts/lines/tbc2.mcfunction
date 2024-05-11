scoreboard players set r Random 3
function glarth:util/random
execute if score n Random matches 1 if entity @e[tag=tbcEvilTs,tag=!2a] run function glarth:dialogue/evil_ts/lines/tbc2a
execute if score n Random matches 1 run tag @e[tag=tbcEvilTs] add 2a
execute if score n Random matches 2 if entity @e[tag=tbcEvilTs,tag=!2b] run function glarth:dialogue/evil_ts/lines/tbc2b
execute if score n Random matches 2 run tag @e[tag=tbcEvilTs] add 2b
execute if score n Random matches 3 if entity @e[tag=tbcEvilTs,tag=!2c] run function glarth:dialogue/evil_ts/lines/tbc2c
execute if score n Random matches 3 run tag @e[tag=tbcEvilTs] add 2c

scoreboard players set didTsDialogue tbcStats 1
schedule function glarth:dialogue/evil_ts/lines/tbc2s 15s