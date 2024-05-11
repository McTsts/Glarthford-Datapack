execute if entity @s[tag=dragonfly_lake] run function glarth:mechanic/animation/dragonfly/lake
execute if entity @s[tag=dragonfly_swamp] run function glarth:mechanic/animation/dragonfly/swamp
execute if entity @s[tag=dragonfly_richard] run function glarth:mechanic/animation/dragonfly/richard
execute if entity @s[scores={Animation=1..},tag=!dragonfly_richard] run function glarth:mechanic/animation/dragonfly/hovering
execute if entity @s[scores={Animation=1..},tag=dragonfly_richard] run function glarth:mechanic/animation/dragonfly/hovering_richard
function glarth:mechanic/animation/dragonfly/sound