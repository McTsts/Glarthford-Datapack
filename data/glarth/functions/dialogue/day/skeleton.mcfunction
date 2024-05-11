tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"skeleton","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"skeleton.d","color":"gray"}]
playsound minecraft:entity.skeleton.hurt hostile @a[r=5] ~ ~ ~ 1 0
execute @e[tag=skeleton] ~ ~ ~ summon skeleton ~ ~ ~
kill @e[tag=skeleton]