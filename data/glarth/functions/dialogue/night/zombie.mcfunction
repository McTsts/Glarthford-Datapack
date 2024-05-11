tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"zombie","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"zombie.n","color":"gray"}]
playsound minecraft:entity.zombie.hurt hostile @a[r=5] ~ ~ ~ 1 0
execute @e[tag=zombie] ~ ~ ~ summon zombie ~ ~ ~
kill @e[tag=zombie]