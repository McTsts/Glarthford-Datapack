scoreboard players add @a[m=2] sound 1
#Lake
execute @a[x=5,y=23,z=-140,r=20,score_sound_min=60] ~ ~ ~ playsound minecraft:block.water.ambient master @s ~ ~ ~ 0.5
scoreboard players set @a[x=5,y=23,z=-140,r=20,score_sound_min=60] sound 0
#Mine, Throne, Sewers
execute @a[x=127,y=25,z=-161,r=40,score_sound_min=200] ~ ~ ~ function mctsts:mechanic/sound/eerie
scoreboard players set @a[x=127,y=25,z=-161,r=40,score_sound_min=200] sound 0
#Ruins
execute @a[x=-35,y=32,z=-177,r=10,score_sound_min=200] ~ ~ ~ function mctsts:mechanic/sound/eerie
scoreboard players set @a[x=-35,y=32,z=-177,r=10,score_sound_min=200] sound 0
#Tower Ruin
execute @a[x=-19,y=31,z=-121,r=10,score_sound_min=200] ~ ~ ~ function mctsts:mechanic/sound/eerie
scoreboard players set @a[x=-19,y=31,z=-121,r=10,score_sound_min=200] sound 0
#Graveyard
execute @a[x=-83,y=27,z=-210,r=10,score_sound_min=200] ~ ~ ~ function mctsts:mechanic/sound/eerie
scoreboard players set @a[x=-83,y=27,z=-210,r=10,score_sound_min=200] sound 0
#Waterfall
execute @a[x=44,y=28,z=-134,r=7,score_sound_min=10] ~ ~ ~ function mctsts:mechanic/sound/waterfall
scoreboard players set @a[x=44,y=28,z=-134,r=7,score_sound_min=10] sound -260
#Cave Waterfall
execute @a[x=-77,y=30,z=-269,r=13,score_sound_min=10] ~ ~ ~ function mctsts:mechanic/sound/waterfall
scoreboard players set @a[x=-77,y=30,z=-269,r=13,score_sound_min=10] sound -260
#Spring
execute @a[x=54,y=37,z=-127,r=12,score_sound_min=10] ~ ~ ~ function mctsts:mechanic/sound/waterfall
scoreboard players set @a[x=54,y=37,z=-127,r=12,score_sound_min=10] sound -260
#Forest
execute @a[x=58,y=26,z=-243,r=25,score_sound_min=60] ~ ~ ~ function mctsts:mechanic/sound/forest
execute @a[x=58,y=26,z=-243,r=25,score_sound_min=10,score_sound=10] ~ ~ ~ execute @s[x=75,y=27,z=-257,rm=10] ~ ~ ~ function mctsts:mechanic/sound/walk
execute @a[x=58,y=26,z=-243,r=25,score_sound_min=30,score_sound=30] ~ ~ ~ execute @s[x=75,y=27,z=-257,rm=10] ~ ~ ~ function mctsts:mechanic/sound/walk
execute @a[x=58,y=26,z=-243,r=25,score_sound_min=50,score_sound=50] ~ ~ ~ execute @s[x=75,y=27,z=-257,rm=10] ~ ~ ~ function mctsts:mechanic/sound/walk
scoreboard players set @a[x=58,y=26,z=-243,r=25,score_sound_min=60] sound 0
#Witch
execute @a[x=-55,y=29,z=-135,r=10,score_sound_min=70] ~ ~ ~ function mctsts:mechanic/sound/witch
scoreboard players set @a[x=-55,y=29,z=-135,r=10,score_sound_min=70] sound 0
#Swamp
execute @a[x=-55,y=29,z=-135,r=30,rm=10,score_sound_min=125] ~ ~ ~ function mctsts:mechanic/sound/swamp
scoreboard players set @a[x=-55,y=29,z=-135,r=30,rm=10,score_sound_min=125] sound 0
#Brewery
execute @a[x=-54,y=27,z=-194,r=30,score_sound_min=150] ~ ~ ~ function mctsts:mechanic/sound/brewery
scoreboard players set @a[x=-54,y=27,z=-194,r=30,score_sound_min=150] sound 0
#Nether
execute @a[x=-137,y=21,z=-203,r=40,score_sound_min=200] ~ ~ ~ function mctsts:mechanic/sound/nether
scoreboard players set @a[x=-137,y=21,z=-203,r=40,score_sound_min=200] sound -100
#Air
execute @a[x=-73,y=40,z=-247,r=7,score_sound_min=10] ~ ~ ~ function mctsts:mechanic/sound/air
scoreboard players set @a[x=-73,y=40,z=-247,r=7,score_sound_min=10] sound -590


scoreboard players set @a[score_sound_min=1000] sound 0