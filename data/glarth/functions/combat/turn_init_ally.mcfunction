# selected marker
execute if entity @s[tag=tbcAlly1] run tag @e[tag=tbcMarkerAlly1] add tbcSelMarker
execute if entity @s[tag=tbcAlly2] run tag @e[tag=tbcMarkerAlly2] add tbcSelMarker
execute if entity @s[tag=tbcAlly3] run tag @e[tag=tbcMarkerAlly3] add tbcSelMarker
execute if entity @s[tag=tbcAlly4] run tag @e[tag=tbcMarkerAlly4] add tbcSelMarker
execute if entity @s[tag=tbcAlly5] run tag @e[tag=tbcMarkerAlly5] add tbcSelMarker
execute if entity @s[tag=tbcAlly6] run tag @e[tag=tbcMarkerAlly6] add tbcSelMarker

# Do Ally Attack
execute unless score @s tbcStun matches 1.. run function glarth:combat/stage
execute unless entity @s[tag=tbcSkipThis] unless entity @s[tag=tbcIgnoreThis] unless score @s tbcStun matches 1.. run function glarth:combat/attack_ally
execute if entity @s[tag=tbcSkipThis] run function glarth:combat/action_ally/006_init
tag @s remove tbcSkipThis
tag @s remove tbcIgnoreThis

data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:1,CustomName:'[{"text":"|| ","color":"red","bold":true},{"translate":"tbc.selected","bold":true,"color":"gray"},{"text":" ||","color":"red","bold":true}]'}

execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] run function glarth:combat/done
