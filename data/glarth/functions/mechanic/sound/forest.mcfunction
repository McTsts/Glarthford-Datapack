scoreboard players set r Random 15
function glarth:util/random
execute if score n Random matches 1 run playsound minecraft:entity.parrot.ambient ambient @s ~ ~ ~ 0.1 1.5
execute if score n Random matches 2 run playsound minecraft:entity.parrot.fly ambient @s ~ ~ ~ 0.1 0
execute if score n Random matches 3 run playsound minecraft:entity.bat.ambient ambient @s ~ ~ ~ 0.1
execute if score n Random matches 4 run playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.1
execute if score n Random matches 5 run playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.1 0
execute if score n Random matches 6 run playsound minecraft:entity.bat.takeoff ambient @s ~ ~ ~ 0.1 0
execute if score n Random matches 7 run playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.05 1
execute if score n Random matches 8 run playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.05 0
execute if score n Random matches 9 run playsound minecraft:entity.blaze.hurt ambient @s ~ ~ ~ 0.1 2
execute if score n Random matches 10 run playsound minecraft:entity.enderdragon.flap ambient @s ~ ~ ~ 0.1 0
execute if score n Random matches 11 run playsound minecraft:entity.chicken.ambient ambient @s ~ ~ ~ 0.1 0
execute if score n Random matches 12 run playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.1 0
execute if score n Random matches 13 run playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.1 1
execute if score n Random matches 14 run playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.1 2
execute if score n Random matches 15 run playsound entity.generic.small_fall ambient @a ~ ~ ~ 0.1 0


