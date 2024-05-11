stopsound @s record

# Load From Queue
execute if score @s MusicQueue matches 0.. run scoreboard players operation @s MusicSet = @s MusicQueue

# Message & Lobby Unlock
execute as @s[tag=!inTBC] run function glarth:mechanic/music/set_msg
function glarth:mechanic/lobby/music_sel/unlock

#Default
scoreboard players set @s[scores={MusicSet=0}] MusicTime 3
scoreboard players set @s[scores={MusicSet=1}] MusicTime 1330
scoreboard players set @s[scores={MusicSet=2}] MusicTime 1400
scoreboard players set @s[scores={MusicSet=3}] MusicTime 1110
scoreboard players set @s[scores={MusicSet=4}] MusicTime 2380
scoreboard players set @s[scores={MusicSet=5}] MusicTime 2600
scoreboard players set @s[scores={MusicSet=6}] MusicTime 1640
scoreboard players set @s[scores={MusicSet=7}] MusicTime 2505
scoreboard players set @s[scores={MusicSet=8}] MusicTime 1920
scoreboard players set @s[scores={MusicSet=9}] MusicTime 2160
scoreboard players set @s[scores={MusicSet=10}] MusicTime 2640
scoreboard players set @s[scores={MusicSet=11}] MusicTime 3340
scoreboard players set @s[scores={MusicSet=12}] MusicTime 2040
scoreboard players set @s[scores={MusicSet=13}] MusicTime 1000
scoreboard players set @s[scores={MusicSet=14}] MusicTime 1400
scoreboard players set @s[scores={MusicSet=15}] MusicTime 770
scoreboard players set @s[scores={MusicSet=16}] MusicTime 3840
scoreboard players set @s[scores={MusicSet=17}] MusicTime 1180
scoreboard players set @s[scores={MusicSet=18}] MusicTime 2350
scoreboard players set @s[scores={MusicSet=19}] MusicTime 1850
scoreboard players set @s[scores={MusicSet=20}] MusicTime 1110
scoreboard players set @s[scores={MusicSet=21}] MusicTime 1920
scoreboard players set @s[scores={MusicSet=22}] MusicTime 1920
scoreboard players set @s[scores={MusicSet=23}] MusicTime 1920
scoreboard players set @s[scores={MusicSet=24}] MusicTime 2100
scoreboard players set @s[scores={MusicSet=25}] MusicTime 1920
scoreboard players set @s[scores={MusicSet=26}] MusicTime 2640
scoreboard players set @s[scores={MusicSet=27}] MusicTime 1800
scoreboard players set @s[scores={MusicSet=28}] MusicTime 2360
scoreboard players set @s[scores={MusicSet=29}] MusicTime 4440
scoreboard players set @s[scores={MusicSet=30}] MusicTime 3420
scoreboard players set @s[scores={MusicSet=31}] MusicTime 1300
scoreboard players set @s[scores={MusicSet=32}] MusicTime 1840
scoreboard players set @s[scores={MusicSet=33}] MusicTime 3220
scoreboard players set @s[scores={MusicSet=34}] MusicTime 1084
scoreboard players set @s[scores={MusicSet=35}] MusicTime 1670
scoreboard players set @s[scores={MusicSet=36}] MusicTime 2740
scoreboard players set @s[scores={MusicSet=37}] MusicTime 1610
scoreboard players set @s[scores={MusicSet=38}] MusicTime 520
scoreboard players set @s[scores={MusicSet=39}] MusicTime 750
scoreboard players set @s[scores={MusicSet=40}] MusicTime 910
scoreboard players set @s[scores={MusicSet=41}] MusicTime 1130
scoreboard players set @s[scores={MusicSet=42}] MusicTime 550
scoreboard players set @s[scores={MusicSet=43}] MusicTime 743
scoreboard players set @s[scores={MusicSet=44}] MusicTime 455
scoreboard players set @s[scores={MusicSet=45}] MusicTime 3720
scoreboard players set @s[scores={MusicSet=46}] MusicTime 2550
scoreboard players set @s[scores={MusicSet=47}] MusicTime 2090
scoreboard players set @s[scores={MusicSet=48}] MusicTime 2650
scoreboard players set @s[scores={MusicSet=49}] MusicTime 2220
scoreboard players set @s[scores={MusicSet=50}] MusicTime 308
scoreboard players set @s[scores={MusicSet=51}] MusicTime 1219
scoreboard players set @s[scores={MusicSet=52}] MusicTime 960
scoreboard players set @s[scores={MusicSet=53}] MusicTime 2000
scoreboard players set @s[scores={MusicSet=54}] MusicTime 2600
scoreboard players set @s[scores={MusicSet=55}] MusicTime 1800
scoreboard players set @s[scores={MusicSet=56}] MusicTime 3180
scoreboard players set @s[scores={MusicSet=57}] MusicTime 1880
scoreboard players set @s[scores={MusicSet=58}] MusicTime 960
scoreboard players set @s[scores={MusicSet=59}] MusicTime 1400
scoreboard players set @s[scores={MusicSet=60}] MusicTime 4230
#End
scoreboard players set @s[scores={MusicSet=100}] MusicTime 160
scoreboard players set @s[scores={MusicSet=101}] MusicTime 160
scoreboard players set @s[scores={MusicSet=104}] MusicTime 250

#Default
playsound dead_lands record @s[scores={MusicSet=1}] ~ ~ ~ 1 1 1
playsound dead_priests_of_the_sea record @s[scores={MusicSet=2}] ~ ~ ~ 1 1 1
playsound salty_sea_docks record @s[scores={MusicSet=3}] ~ ~ ~ 1 1 1
playsound going_to_adventure record @s[scores={MusicSet=4}] ~ ~ ~ 1 1 1
playsound harp_and_viola_night record @s[scores={MusicSet=5}] ~ ~ ~ 1 1 1
playsound lonely_road record @s[scores={MusicSet=6}] ~ ~ ~ 1 1 1
playsound midnight_moon record @s[scores={MusicSet=7}] ~ ~ ~ 1 1 1
playsound viewy_merchant record @s[scores={MusicSet=8}] ~ ~ ~ 1 1 1
playsound unsure record @s[scores={MusicSet=9}] ~ ~ ~ 1 1 1
playsound boozy_brewer record @s[scores={MusicSet=10}] ~ ~ ~ 1 1 1
playsound halloween record @s[scores={MusicSet=11}] ~ ~ ~ 1 1 1
playsound dawn_and_dusk record @s[scores={MusicSet=12}] ~ ~ ~ 1 1 1
playsound o_sailor_johnny record @s[scores={MusicSet=13}] ~ ~ ~ 1 1 1
playsound priests_of_the_sea record @s[scores={MusicSet=14}] ~ ~ ~ 1 1 1
playsound aurora record @s[scores={MusicSet=15}] ~ ~ ~ 1 1 1
playsound busy_merchant record @s[scores={MusicSet=16}] ~ ~ ~ 1 0.5 1
playsound lively_road record @s[scores={MusicSet=17}] ~ ~ ~ 1 1.4 1
playsound solemn_road record @s[scores={MusicSet=18}] ~ ~ ~ 1 0.7 1
playsound sleepy_sea_docks record @s[scores={MusicSet=19}] ~ ~ ~ 1 0.6 1
playsound dead_lands_windy record @s[scores={MusicSet=20}] ~ ~ ~ 1 1.2 1
playsound above_the_below record @s[scores={MusicSet=21}] ~ ~ ~ 1 1 1
playsound below_the_above record @s[scores={MusicSet=22}] ~ ~ ~ 1 1 1
playsound jungle_festival record @s[scores={MusicSet=23}] ~ ~ ~ 1 1 1
playsound lost_in_time record @s[scores={MusicSet=24}] ~ ~ ~ 1 1 1
playsound sunken_story record @s[scores={MusicSet=25}] ~ ~ ~ 1 1 1
playsound king_of_the_hill record @s[scores={MusicSet=26}] ~ ~ ~ 1 1 1
playsound boss_theme record @s[scores={MusicSet=27}] ~ ~ ~ 0.8 1 0.8
playsound boss_theme_orchestral record @s[scores={MusicSet=28}] ~ ~ ~ 0.8 1 0.8
playsound jungle_mystery record @s[scores={MusicSet=29}] ~ ~ ~ 1 1 1
playsound jungle_rumble record @s[scores={MusicSet=30}] ~ ~ ~ 1 1 1
playsound explody_bois record @s[scores={MusicSet=31}] ~ ~ ~ 1 1 1
playsound junkyard_jam record @s[scores={MusicSet=32}] ~ ~ ~ 1 1 1
playsound the_source record @s[scores={MusicSet=33}] ~ ~ ~ 1 1 1
playsound charged_bois record @s[scores={MusicSet=34}] ~ ~ ~ 1 1.2 1
playsound midnight_cavern record @s[scores={MusicSet=35}] ~ ~ ~ 1 1.5 1
playsound aurora_long record @s[scores={MusicSet=36}] ~ ~ ~ 1 1 1
playsound the_source_fast record @s[scores={MusicSet=37}] ~ ~ ~ 1 2 1
playsound halloween_piano record @s[scores={MusicSet=38}] ~ ~ ~ 1 1 1
playsound haunting_sequence record @s[scores={MusicSet=39}] ~ ~ ~ 1 1 1
playsound howling_night record @s[scores={MusicSet=40}] ~ ~ ~ 1 1 1
playsound scary_night record @s[scores={MusicSet=41}] ~ ~ ~ 1 1 1
playsound spooky_wind record @s[scores={MusicSet=42}] ~ ~ ~ 1 1 1
playsound halloween_piano_slow record @s[scores={MusicSet=43}] ~ ~ ~ 1 0.7 1
playsound roaring_night record @s[scores={MusicSet=44}] ~ ~ ~ 1 2 1
playsound dragon_fish record @s[scores={MusicSet=45}] ~ ~ ~ 0.3 2 0.3
playsound concrete_halls record @s[scores={MusicSet=46}] ~ ~ ~ 0.3 2 0.3
playsound warmth record @s[scores={MusicSet=47}] ~ ~ ~ 0.3 2 0.3
playsound ballad_of_the_cats record @s[scores={MusicSet=48}] ~ ~ ~ 1 2 1
playsound boss_fight_theme record @s[scores={MusicSet=49}] ~ ~ ~ 1 1 1
playsound time_to_fight_intro record @s[scores={MusicSet=50}] ~ ~ ~ 1 1 1
execute as @s[scores={MusicSet=51}] run function glarth:mechanic/music/play_ttf
playsound house_of_madness record @s[scores={MusicSet=52}] ~ ~ ~ 1 1 1
playsound adrenaline_rush record @s[scores={MusicSet=53}] ~ ~ ~ 1 0.9 1
playsound strange_occurences record @s[scores={MusicSet=54}] ~ ~ ~ 1 1 1
playsound heated_debate record @s[scores={MusicSet=55}] ~ ~ ~ 1 1 1
playsound so_below record @s[scores={MusicSet=56}] ~ ~ ~ 0.3 2 0.3
playsound battle_theme record @s[scores={MusicSet=57}] ~ ~ ~ 0.8 1 0.8
playsound below_the_above_sewers record @s[scores={MusicSet=58}] ~ ~ ~ 1 2 1
playsound lost_in_time_battle record @s[scores={MusicSet=59}] ~ ~ ~ 1 1.5 1
playsound pigstep record @s[scores={MusicSet=60}] ~ ~10000 ~ 500 0.7 1
#End
playsound end0 record @s[scores={MusicSet=100}] ~ ~ ~ 1 1 1
playsound end1 record @s[scores={MusicSet=101}] ~ ~ ~ 1 1 1
playsound end4 record @s[scores={MusicSet=104}] ~ ~ ~ 1 1 1

# Queue Handler
scoreboard players set @s MusicQueue -1
scoreboard players set @s[scores={MusicSet=50}] MusicQueue 51
scoreboard players set @s[scores={MusicSet=100..}] MusicQueue 0

# Setting
execute as @s[scores={MusicSet=0..}] run scoreboard players operation @s MusicMax = @s MusicTime
execute as @s[scores={MusicSet=0..}] run scoreboard players operation @s MusicLast = @s MusicSet
execute as @s[scores={MusicSet=0..}] run scoreboard players operation @s MusicNum = @s MusicSet
execute as @s[scores={MusicSet=0..}] run scoreboard players set @s MusicSet -1