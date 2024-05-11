scoreboard players set r Random 8
function glarth:util/random
execute if score n Random matches 1 run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 0
execute if score n Random matches 2 run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 1
execute if score n Random matches 3 run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 2
execute if score n Random matches 4 run playsound minecraft:entity.witch.ambient ambient @a ~ ~ ~ 0.4 1
execute if score n Random matches 5 run playsound minecraft:entity.witch.drink ambient @a ~ ~ ~ 0.4 1
execute if score n Random matches 6 run playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 0.1 0
execute if score n Random matches 7 run playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.1 1



