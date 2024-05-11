execute @e[tag=grimsbane_boss] ~ ~ ~ particle smoke ~ ~ ~ 10 10 10 0.1 1000
execute @e[tag=grimsbane_boss] ~ ~ ~ playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 1
execute @e[tag=grimsbane_boss] ~ ~ ~ execute @e[tag=char,r=10] ~ ~ ~ particle lava ~ ~ ~ 1 1 1 0 50
execute @e[tag=grimsbane_boss] ~ ~ ~ execute @e[tag=char,r=10] ~ ~ ~ particle flame ~ ~ ~ 1 1 1 0.5 50
execute @e[tag=grimsbane_boss] ~ ~ ~ execute @e[tag=char,r=10] ~ ~ ~ particle angryVillager ~ ~ ~ 1 1 1 0.5 50
execute @e[tag=grimsbane_boss] ~ ~ ~ execute @e[tag=char,r=10] ~ ~ ~ playsound minecraft:entity.villager.death neutral @a ~ ~ ~ 1 1
execute @e[tag=grimsbane_boss] ~ ~ ~ scoreboard players tag @e[tag=char,r=10] add die2
execute @e[tag=grimsbane_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.1","color":"gray"}]
execute @e[tag=grimsbane_boss] ~ ~ ~ playsound grimsbane3 voice @a[r=15] ~ ~ ~ 100 1