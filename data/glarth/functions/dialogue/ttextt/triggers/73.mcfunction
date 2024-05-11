#73 TTEXTT | Music Disc to Diamond Helmet
function glarth:dialogue/ttextt/lines/trade1
clear @s minecraft:music_disc_strad 1
give @s minecraft:diamond_helmet 1
scoreboard players set @a[distance=..5] MusicSet 29
tag @e[tag=ttextt,type=armor_stand] add a