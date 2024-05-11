scoreboard players add wifeCounter Temp 1
execute if score wifeCounter Temp matches 4 run scoreboard players set wifeCounter Temp 1

execute if score wifeCounter Temp matches 1 run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"wife","color":"#FF8488"},{"text":"] ","color":"dark_gray"},{"translate":"wife.tbc1","color":"gray"},"\n"]
execute if score wifeCounter Temp matches 1 as @a at @s run execute unless score @s trigger = @s triggerPrev run playsound wife12 voice @s ~ ~ ~ 1 1 1
execute if score wifeCounter Temp matches 2 run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"wife","color":"#FF8488"},{"text":"] ","color":"dark_gray"},{"translate":"wife.tbc2","color":"gray"},"\n"]
execute if score wifeCounter Temp matches 2 as @a at @s run execute unless score @s trigger = @s triggerPrev run playsound wife13 voice @s ~ ~ ~ 1 1 1
execute if score wifeCounter Temp matches 3 run tellraw @a ["",{"text":"\n[","color":"dark_gray"},{"translate":"wife","color":"#FF8488"},{"text":"] ","color":"dark_gray"},{"translate":"wife.tbc3","color":"gray"},"\n"]
execute if score wifeCounter Temp matches 3 as @a at @s run execute unless score @s trigger = @s triggerPrev run playsound wife14 voice @s ~ ~ ~ 1 1 1