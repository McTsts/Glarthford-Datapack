scoreboard players add @a[gamemode=adventure] sound 1
#Lake
execute unless score season winter matches 1 as @a[x=5,y=23,z=-140,distance=..20,scores={sound=100..}] at @s run function glarth:mechanic/sound/lake
scoreboard players set @a[x=5,y=23,z=-140,distance=..20,scores={sound=100..}] sound 0
#Mine, Throne, Sewers
execute as @a[x=127,y=25,z=-161,distance=..40,scores={sound=200..}] at @s run function glarth:mechanic/sound/eerie
scoreboard players set @a[x=127,y=25,z=-161,distance=..40,scores={sound=200..}] sound 0
#Ruins
execute as @a[x=-35,y=32,z=-177,distance=..10,scores={sound=200..}] at @s run function glarth:mechanic/sound/eerie
scoreboard players set @a[x=-35,y=32,z=-177,distance=..10,scores={sound=200..}] sound 0
#Tower Ruin
execute as @a[x=-19,y=31,z=-121,distance=..10,scores={sound=200..}] at @s run function glarth:mechanic/sound/eerie
scoreboard players set @a[x=-19,y=31,z=-121,distance=..10,scores={sound=200..}] sound 0
#Graveyard
execute as @a[x=-83,y=27,z=-210,distance=..10,scores={sound=200..}] at @s run function glarth:mechanic/sound/eerie
scoreboard players set @a[x=-83,y=27,z=-210,distance=..10,scores={sound=200..}] sound 0
#Waterfall
execute unless score season winter matches 1 as @a[x=44,y=28,z=-134,distance=..7,scores={sound=10..}] at @s run function glarth:mechanic/sound/waterfall
scoreboard players set @a[x=44,y=28,z=-134,distance=..7,scores={sound=10..}] sound -260
#Cave Waterfall
execute unless score season winter matches 1 as @a[x=-77,y=30,z=-269,distance=..13,scores={sound=10..}] at @s run function glarth:mechanic/sound/waterfall
scoreboard players set @a[x=-77,y=30,z=-269,distance=..13,scores={sound=10..}] sound -260
#Spring
execute unless score season winter matches 1 as @a[x=54,y=37,z=-127,distance=..12,scores={sound=10..}] at @s run function glarth:mechanic/sound/waterfall
scoreboard players set @a[x=54,y=37,z=-127,distance=..12,scores={sound=10..}] sound -260
#Forest
execute as @a[x=58,y=26,z=-243,distance=..25,scores={sound=60..}] at @s run function glarth:mechanic/sound/forest
execute as @a[x=58,y=26,z=-243,distance=..25,scores={sound=10}] at @s as @s[x=75,y=27,z=-257,distance=..10] at @s run function glarth:mechanic/sound/walk
execute as @a[x=58,y=26,z=-243,distance=..25,scores={sound=30}] at @s as @s[x=75,y=27,z=-257,distance=..10] at @s run function glarth:mechanic/sound/walk
execute as @a[x=58,y=26,z=-243,distance=..25,scores={sound=50}] at @s as @s[x=75,y=27,z=-257,distance=..10] at @s run function glarth:mechanic/sound/walk
scoreboard players set @a[x=58,y=26,z=-243,distance=..25,scores={sound=60..}] sound 0
#Witch
execute as @a[x=-55,y=29,z=-135,distance=..10,scores={sound=70..}] at @s run function glarth:mechanic/sound/witch
scoreboard players set @a[x=-55,y=29,z=-135,distance=..10,scores={sound=70..}] sound 0
#Swamp
execute as @a[x=-55,y=29,z=-135,distance=..30,scores={sound=125..}] at @s run function glarth:mechanic/sound/swamp
scoreboard players set @a[x=-55,y=29,z=-135,distance=..30,scores={sound=125..}] sound 0
#Brewery
execute as @a[x=-54,y=27,z=-194,distance=..30,scores={sound=150..}] at @s run function glarth:mechanic/sound/brewery
scoreboard players set @a[x=-54,y=27,z=-194,distance=..30,scores={sound=150..}] sound 0
#Nether
execute as @a[x=-137,y=21,z=-203,distance=..40,scores={sound=200..}] at @s run function glarth:mechanic/sound/nether
scoreboard players set @a[x=-137,y=21,z=-203,distance=..40,scores={sound=200..}] sound -100
#Air Observatory
execute as @a[x=-73,y=40,z=-247,distance=..7,scores={sound=10..}] at @s run function glarth:mechanic/sound/air
scoreboard players set @a[x=-73,y=40,z=-247,distance=..7,scores={sound=10..}] sound -590
# Air Baloon
execute as @a[x=-74,y=37,z=-177,distance=..7,scores={sound=10..}] at @s run function glarth:mechanic/sound/air
scoreboard players set @a[x=-74,y=37,z=-177,distance=..7,scores={sound=10..}] sound -590
stopsound @a[x=-74,y=37,z=-177,distance=15..20] * air1
stopsound @a[x=-74,y=37,z=-177,distance=15..20] * air2
stopsound @a[x=-74,y=37,z=-177,distance=15..20] * air3
stopsound @a[x=-74,y=37,z=-177,distance=15..20] * air4


scoreboard players set @a[scores={sound=1000..}] sound 0