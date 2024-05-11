scoreboard players set r Random 15
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.parrot.ambient ambient @s ~ ~ ~ 0.2 1.5
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.parrot.fly ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.ambient ambient @s ~ ~ ~ 0.2
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.2
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.takeoff ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 7 7
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.2 1
execute @s ~ ~ ~ scoreboard players test n Random 8 8
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 9 9
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.blaze.hurt ambient @s ~ ~ ~ 0.2 2
execute @s ~ ~ ~ scoreboard players test n Random 10 10
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.enderdragon.flap ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 11 11
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.chicken.ambient ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 12 12
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 13 13
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.2 1
execute @s ~ ~ ~ scoreboard players test n Random 14 14
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.2 2
execute @s ~ ~ ~ scoreboard players test n Random 15 15
execute @s[score_Success_min=1] ~ ~ ~ playsound entity.generic.small_fall ambient @a ~ ~ ~ 0.2 0


