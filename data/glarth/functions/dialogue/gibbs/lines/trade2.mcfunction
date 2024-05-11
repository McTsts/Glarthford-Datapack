scoreboard players set r Random 4
function glarth:util/random
execute if score n Random matches 1 run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.2.a","color":"gray"}]
execute if score n Random matches 2 run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.2.b","color":"gray"}]
execute if score n Random matches 3 run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.2.c","color":"gray"}]
execute if score n Random matches 4 run tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.2.d","color":"gray"}]

execute if score n Random matches 1 run playsound gibbs5 voice @a[distance=..5] ~ ~ ~ 1 1 1
execute if score n Random matches 2 run playsound gibbs6 voice @a[distance=..5] ~ ~ ~ 1 1 1
execute if score n Random matches 3 run playsound gibbs7 voice @a[distance=..5] ~ ~ ~ 1 1 1
execute if score n Random matches 4 run playsound gibbs8 voice @a[distance=..5] ~ ~ ~ 1 1 1