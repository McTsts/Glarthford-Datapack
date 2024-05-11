#Spawn
execute if score timer end matches 1 run scoreboard players set @a MusicSet 101

#Scene
execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run effect give @a[gamemode=spectator] blindness 3 0 true
execute if score timer end matches 1 run summon armor_stand 73 30 -238 {Marker:1,Invisible:1,Small:1,Tags:["endScenePov"]}
execute if score timer end matches 1 as @e[tag=endScenePov,type=armor_stand] at @s run tp @s ~ ~ ~ facing 93 35 -229
execute if score timer end matches 1..340 as @a[gamemode=spectator] run spectate @e[type=armor_stand,tag=endScenePov,x=7,y=39,z=-200,limit=1] @s
execute if score timer end matches 41..190 as @e[tag=endScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.1333 facing 93 35 -229
execute if score timer end matches 191..250 as @e[tag=endScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.1 ~-1.66666 ~0.5
execute if score timer end matches 251..320 as @e[tag=endScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.06666 ~ ~
execute if score timer end matches 61..320 run effect clear @a[gamemode=spectator] minecraft:blindness
execute if score timer end matches 1..320 run effect clear @a[gamemode=spectator] minecraft:night_vision
execute if score timer end matches 175 run function glarth:dialogue/uncle/lines/end_6
execute if score timer end matches 375 run function glarth:mechanic/win

