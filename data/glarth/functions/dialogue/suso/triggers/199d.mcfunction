execute at @e[tag=suso] run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
summon cat -17.50 26.00 -184.50 {CatType:3,Sitting:0,Invulnerable:1,CustomName:'{"translate":"suso","color":"blue"}',CustomNameVisible:1,Tags:["suso"]}
tp @e[tag=suso,type=cat] @e[tag=suso,type=armor_stand,limit=1,sort=nearest]
data modify entity @e[tag=suso,type=cat,limit=1] Owner set from entity @p[tag=savedSuso] UUID
execute as @e[tag=suso,type=armor_stand] at @s run function glarth:mechanic/char/collision/remove
execute as @e[tag=suso,type=armor_stand] at @s run tp @s ~ ~-2 ~
execute as @e[tag=suso,type=armor_stand] run data merge entity @s {CustomNameVisible:0}
execute as @e[tag=suso,type=armor_stand] run tag @s add die

execute at @e[tag=suso,type=armor_stand] run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1.1
execute at @e[tag=suso,type=armor_stand] run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1.0
execute at @e[tag=suso,type=armor_stand] run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 0.9