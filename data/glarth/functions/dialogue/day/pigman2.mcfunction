tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pigman","color":"light_purple"},{"text":"] ","color":"dark_gray"},{"translate":"zombie.d","color":"gray"}]
playsound minecraft:entity.zombie_pig.ambient hostile @a[r=5] ~ ~ ~ 1 1
execute @e[tag=pigman2] ~ ~ ~ summon zombie_pigman ~ ~ ~
kill @e[tag=pigman2]