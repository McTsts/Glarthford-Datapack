$tag @s remove tbcEnemy$(from)
$tag @s add tbcEnemy$(to)
$execute at @e[tag=tbcMarkerEnemy$(from)] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..5] @e[tag=tbcMarkerEnemy$(to),limit=1]
$execute at @e[tag=tbcMarkerEnemy$(from)] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..5] @e[tag=tbcMarkerEnemy$(to),limit=1]
$execute at @e[tag=tbcMarkerEnemy$(to)] positioned ~ ~ ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..5] ~ ~1.7 ~
$execute at @e[tag=tbcMarkerEnemy$(to)] positioned ~ ~ ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..5] ~ ~1.4 ~
$execute as @e[tag=tbcEnemy$(to),type=armor_stand] run function glarth:combat/set_loc