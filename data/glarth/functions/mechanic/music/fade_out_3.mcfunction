execute if score @s MusicLast matches 11 run scoreboard players set @s MusicFade 0

execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 300 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 300 run playsound minecraft:dawn_and_dusk_fo_1 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 600 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 600 run playsound minecraft:dawn_and_dusk_fo_2 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 900 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 900 run playsound minecraft:dawn_and_dusk_fo_3 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 1200 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 1200 run playsound minecraft:dawn_and_dusk_fo_4 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 1500 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 12 if score @s MusicTimeR matches 1500 run playsound minecraft:dawn_and_dusk_fo_5 record @s ~ ~ ~ 1 1 1

execute if score @s MusicLast matches 13 if score @s MusicTimeR matches 300 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 13 if score @s MusicTimeR matches 300 run playsound minecraft:o_sailor_johnny_fo_1 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 13 if score @s MusicTimeR matches 600 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 13 if score @s MusicTimeR matches 600 run playsound minecraft:o_sailor_johnny_fo_2 record @s ~ ~ ~ 1 1 1

execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 300 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 300 run playsound minecraft:priests_of_the_sea_fo_1 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 600 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 600 run playsound minecraft:priests_of_the_sea_fo_2 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 900 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 14 if score @s MusicTimeR matches 900 run playsound minecraft:priests_of_the_sea_fo_3 record @s ~ ~ ~ 1 1 1

execute if score @s MusicLast matches 15 run scoreboard players set @s MusicFade -1