#73 TTEXTT | Music Disc to Golden Helmet
function glarth:dialogue/ttextt/lines/trade1
clear @s minecraft:music_disc_pigstep 1
give @s golden_helmet{CustomModelData:0} 1 
scoreboard players set @a[distance=..5] MusicSet 60
tag @e[tag=ttextt,type=armor_stand] add b