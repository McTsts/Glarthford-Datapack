# Blinking
execute unless score @s charMouth matches 1.. run scoreboard players add @s charBlink 1
execute unless score @s charMouth matches 1.. if score @s charBlink matches 100 run function glarth:mechanic/char/blink/start
execute unless score @s charMouth matches 1.. if score @s charBlink matches 110.. run function glarth:mechanic/char/blink/end

# Mouth Movement
execute if score @s charMouth matches 0.. run scoreboard players remove @s charMouth 1
execute if score @s charMouth matches 1.. unless score @s charMouthX matches 1.. run scoreboard players operation @s charMouthX = @s charMouth
execute if score @s charMouth matches 1.. if score @s charMouthX = @s charMouth if entity @s[tag=charMouthOpen] run function glarth:mechanic/char/mouth/end
execute if score @s charMouth matches 1.. if score @s charMouthX = @s charMouth if entity @s[tag=!charMouthOpen] run function glarth:mechanic/char/mouth/start
execute if score @s charMouth matches 0 if entity @s[tag=charMouthOpen] run function glarth:mechanic/char/mouth/end

# Main
tag @s remove charAnimated