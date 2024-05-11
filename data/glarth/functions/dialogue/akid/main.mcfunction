# Cycle
function glarth:dialogue/akid/cycle
# Dialogue
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/akid/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/akid/lines/day2
execute if score cycle Temp matches 0 run function glarth:dialogue/akid/lines/night
# Trades
function glarth:dialogue/akid/trades/all
# Extra
execute as @a[tag=!hint12,distance=..5,gamemode=adventure] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2
tellraw @a[distance=..5,gamemode=adventure,tag=!hint12] ["",{"translate":"hint.kid","color":"gold","italic":true}]
tag @a[distance=..5,gamemode=adventure] add hint12