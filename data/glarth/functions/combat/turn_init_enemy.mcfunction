function glarth:combat/count
function glarth:combat/action_enemy/util/get_target
execute as @s[tag=tbcEnemy1] run tag @e[tag=tbcMarkerEnemy1] add tbcSelMarker
execute as @s[tag=tbcEnemy2] run tag @e[tag=tbcMarkerEnemy2] add tbcSelMarker
execute as @s[tag=tbcEnemy3] run tag @e[tag=tbcMarkerEnemy3] add tbcSelMarker
execute as @s[tag=tbcEnemy4] run tag @e[tag=tbcMarkerEnemy4] add tbcSelMarker
execute as @s[tag=tbcEnemy5] run tag @e[tag=tbcMarkerEnemy5] add tbcSelMarker
execute as @s[tag=tbcEnemy6] run tag @e[tag=tbcMarkerEnemy6] add tbcSelMarker
execute as @s[tag=tbcEnemy7] run tag @e[tag=tbcMarkerEnemy7] add tbcSelMarker
execute as @s[tag=tbcEnemy8] run tag @e[tag=tbcMarkerEnemy8] add tbcSelMarker
execute as @s[tag=tbcEnemy9] run tag @e[tag=tbcMarkerEnemy9] add tbcSelMarker
scoreboard players set @e[tag=tbcMarkerEnemy] tbcIDM 0
scoreboard players set @e[tag=tbcEnemy] tbcID 0
scoreboard players set @s tbcID 1
scoreboard players set @e[tag=tbcSelMarker] tbcIDM 1


# Do Enemy Attack
scoreboard players set attackCounter tbcStats 0
execute unless score @s tbcStun matches 1.. unless score @s tbcFreeze matches 1.. run function glarth:combat/stage
execute unless entity @s[tag=tbcSkipThis] unless entity @s[tag=tbcIgnoreThis] unless score @s tbcStun matches 1.. unless score @s tbcFreeze matches 1.. run function glarth:combat/attack
execute if entity @s[tag=tbcSkipThis] run function glarth:combat/action_enemy/058_init
tag @s remove tbcSkipThis
tag @s remove tbcIgnoreThis

data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:0}