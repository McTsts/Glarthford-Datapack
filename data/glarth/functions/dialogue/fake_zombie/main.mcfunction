# Cycle
function glarth:dialogue/fake_zombie/cycle
# Dialogue
execute if entity @s[tag=b] run function glarth:dialogue/fake_zombie/lines/generic3
execute if score cycle Temp matches 0 if entity @s[tag=a,tag=!b] run function glarth:dialogue/fake_zombie/lines/generic2
execute if score cycle Temp matches 1 if entity @s[tag=a,tag=!b] run function glarth:dialogue/fake_zombie/lines/generic1b
execute if entity @s[tag=!a] run function glarth:dialogue/fake_zombie/lines/generic1