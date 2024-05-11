execute @s[tag=!fly_off] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ghost_queen","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"ghost_queen.d","color":"gray"}]
execute @s[tag=!fly_off] ~ ~ ~ playsound queen1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=fly_off] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ghost_queen","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"ghost_queen.d2","color":"gray"}]
execute @s[tag=fly_off] ~ ~ ~ playsound queen2 voice @a[r=5] ~ ~ ~ 100 1
scoreboard players tag @e[tag=ghost_queen] add fly_off