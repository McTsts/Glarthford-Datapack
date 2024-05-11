stopsound @a[score_MusicSet_min=1] record

#Music
tellraw @a[score_MusicSet_min=1,score_MusicSet=1] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Deadlands","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"BenTechy66","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=2,score_MusicSet=2] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Dead Priests of the Sea","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"Green Greeny","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=3,score_MusicSet=3] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Salty Sea Docks","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"Green Greeny","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=4,score_MusicSet=4] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Going to Adventure","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"TTEXTT","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=5,score_MusicSet=5] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Harp and Viola Night","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"Green Greeny","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=6,score_MusicSet=6] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Lonely Road","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"Green Greeny","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=7,score_MusicSet=7] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Midnight Moon","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"TTEXTT","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=8,score_MusicSet=8] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Viewy Merchant","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"TTEXTT","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]
tellraw @a[score_MusicSet_min=9,score_MusicSet=9] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"TS","color":"gold","bold":true,"obfuscated":true},{"text":"] ","color":"dark_gray","bold":true,"obfuscated":false},{"text":"♪♫ Now playing: ","color":"gray","bold":false},{"text":"Unsure","color":"gold","underlined":true},{"text":" by ","color":"gray","underlined":false},{"text":"Green Greeny","color":"gold","underlined":true},{"text":" 🎜♬","color":"gray","underlined":false}]


scoreboard players set @a[score_MusicSet_min=1,score_MusicSet=1] MusicTime 1330
scoreboard players set @a[score_MusicSet_min=2,score_MusicSet=2] MusicTime 1400
scoreboard players set @a[score_MusicSet_min=3,score_MusicSet=3] MusicTime 1110
scoreboard players set @a[score_MusicSet_min=4,score_MusicSet=4] MusicTime 2380
scoreboard players set @a[score_MusicSet_min=5,score_MusicSet=5] MusicTime 2600
scoreboard players set @a[score_MusicSet_min=6,score_MusicSet=6] MusicTime 1640
scoreboard players set @a[score_MusicSet_min=7,score_MusicSet=7] MusicTime 2505
scoreboard players set @a[score_MusicSet_min=8,score_MusicSet=8] MusicTime 1920
scoreboard players set @a[score_MusicSet_min=9,score_MusicSet=9] MusicTime 2160


playsound dead_lands record @a[score_MusicSet_min=1,score_MusicSet=1] ~ ~ ~ 1000 1
playsound dead_priests_of_the_sea record @a[score_MusicSet_min=2,score_MusicSet=2] ~ ~ ~ 1000 1
playsound salty_sea_docks record @a[score_MusicSet_min=3,score_MusicSet=3] ~ ~ ~ 1000 1
playsound going_to_adventure record @a[score_MusicSet_min=4,score_MusicSet=4] ~ ~ ~ 1000 1
playsound harp_and_viola_night record @a[score_MusicSet_min=5,score_MusicSet=5] ~ ~ ~ 1000 1
playsound lonely_road record @a[score_MusicSet_min=6,score_MusicSet=6] ~ ~ ~ 1000 1
playsound midnight_moon record @a[score_MusicSet_min=7,score_MusicSet=7] ~ ~ ~ 1000 1
playsound viewy_merchant record @a[score_MusicSet_min=8,score_MusicSet=8] ~ ~ ~ 1000 1
playsound unsure record @a[score_MusicSet_min=9,score_MusicSet=9] ~ ~ ~ 1000 1


#Mechanic
execute @a[score_MusicSet_min=1] ~ ~ ~ scoreboard players operation @s MusicMax = @s MusicTime
execute @a[score_MusicSet_min=1] ~ ~ ~ scoreboard players operation @s MusicNum = @s MusicSet
execute @a[score_MusicSet_min=1] ~ ~ ~ scoreboard players set @s MusicSet 0
execute @a[score_MusicLeave_min=1] ~ ~ ~ scoreboard players operation @s MusicSet = @s MusicNum
execute @a[score_MusicLeave_min=1] ~ ~ ~ scoreboard players set @s MusicLeave 0
scoreboard players remove @a[score_MusicTime_min=1] MusicTime 1
execute @a[score_MusicTime=0,tag=!MusicRandom] ~ ~ ~ scoreboard players operation @s MusicSet = @s MusicNum
execute @a[score_MusicTime=0,tag=MusicRandom] ~ ~ ~ scoreboard players set r Random 18
execute @a[score_MusicTime=0,tag=MusicRandom] ~ ~ ~ function mctsts:util/random
execute @a[score_MusicTime=0,tag=MusicRandom] ~ ~ ~ scoreboard players operation @s MusicSet = n Random

#Area
execute @a ~ ~ ~ scoreboard players operation @s MusicLast = @s MusicArea

execute @a ~ ~ ~ detect ~ 0 ~ concrete color=white scoreboard players set @s MusicArea 1
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=orange scoreboard players set @s MusicArea 2
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=magenta scoreboard players set @s MusicArea 3
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=light_blue scoreboard players set @s MusicArea 4
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=yellow scoreboard players set @s MusicArea 5
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=lime scoreboard players set @s MusicArea 6
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=pink scoreboard players set @s MusicArea 7
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=gray scoreboard players set @s MusicArea 8
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=silver scoreboard players set @s MusicArea 9
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=cyan scoreboard players set @s MusicArea 10
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=purple scoreboard players set @s MusicArea 11
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=blue scoreboard players set @s MusicArea 12
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=brown scoreboard players set @s MusicArea 13
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=green scoreboard players set @s MusicArea 14
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=red scoreboard players set @s MusicArea 15
execute @a ~ ~ ~ detect ~ 0 ~ concrete color=black scoreboard players set @s MusicArea 16

execute @a ~ ~ ~ scoreboard players operation @s MusicLast -= @s MusicArea
scoreboard players set @a[score_MusicLast_min=1] MusicTimer 0
scoreboard players set @a[score_MusicLast=-1] MusicTimer 0
scoreboard players add @a MusicTimer 1
execute @a[score_MusicTimer_min=300,score_MusicTimer=300] ~ ~ ~ scoreboard players operation @s MusicNum = @s MusicArea

execute @e[name=MusicFill,type=Squid] ~ ~ ~ fill ~-7 0 ~-7 ~7 0 ~7 concrete 3
entitydata @e[name=MusicFill,type=Squid] {DeathTIme:19s,Health:0.0f}

