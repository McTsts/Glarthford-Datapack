# Dialogue
execute if entity @s[tag=!a] run function glarth:dialogue/netheran/lines/invulnerable
execute if entity @s[tag=a] run schedule function glarth:dialogue/netheran/lines/generic 30
# Fight
execute if entity @s[tag=a] run function glarth:combat/start/boss/netheran