#Double Doors
#OPENING
execute if score @s timer_t matches ..89 if block ~ ~ ~ #minecraft:doors[open=true] run function glarth.doors:double_open
#CLOSE
execute if score @s timer_t matches 1.. if block ~ ~ ~ #minecraft:doors[open=false] run function glarth.doors:double_close

execute unless score @s timer_t = @s timer_p run function glarth.doors:execute
