execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 300 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 300 run playsound minecraft:king_of_the_hill_fo_1 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 600 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 600 run playsound minecraft:king_of_the_hill_fo_2 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 900 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 900 run playsound minecraft:king_of_the_hill_fo_3 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1200 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1200 run playsound minecraft:king_of_the_hill_fo_4 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1500 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1500 run playsound minecraft:king_of_the_hill_fo_5 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1800 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 1800 run playsound minecraft:king_of_the_hill_fo_6 record @s ~ ~ ~ 1 1 1
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 2100 run function glarth:mechanic/music/do_fade_out
execute if score @s MusicLast matches 26 if score @s MusicTimeR matches 2100 run playsound minecraft:king_of_the_hill_fo_7 record @s ~ ~ ~ 1 1 1

execute if score @s MusicLast matches 27 run scoreboard players set @s MusicFade 0

execute if score @s MusicLast matches 28 run scoreboard players set @s MusicFade 0

execute if score @s MusicLast matches 29 run scoreboard players set @s MusicFade -1

execute if score @s MusicLast matches 30 run scoreboard players set @s MusicFade 0