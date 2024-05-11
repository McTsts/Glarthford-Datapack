#Time
function glarth:mechanic/time
#End Via Time Out
execute unless score timer boss matches 1..79 if score time Dis matches 2400.. if score day Dis matches 1.. if entity @e[tag=area_main,tag=!infmode] run tellraw @a ["",{"translate":"time","color":"red"}]
execute unless score timer boss matches 1..79 if score time Dis matches 2400.. if score day Dis matches 1.. if entity @e[tag=area_main,tag=!infmode] run function glarth:mechanic/lose
# Collission
function glarth:mechanic/char/collision
#Functions
function glarth:mechanic/wind/main
function glarth:mechanic/game_actions
function glarth:mechanic/game_mobs
function glarth.echest:loop/main
function glarth.doors:tick
#Quest
execute if score quest Stats matches 0 run function glarth:mechanic/quest/0
execute if score quest Stats matches 1 run function glarth:mechanic/quest/1
execute if score quest Stats matches 2 run function glarth:mechanic/quest/2
execute if score quest Stats matches 3 run function glarth:mechanic/quest/3
execute if score quest Stats matches 4 run function glarth:mechanic/quest/4
execute if score quest Stats matches 5 run function glarth:mechanic/quest/5
execute if score quest Stats matches 6 run function glarth:mechanic/quest/6
execute if score quest Stats matches 7 run function glarth:mechanic/quest/7
execute if score quest Stats matches 8 run function glarth:mechanic/quest/8
execute if score quest Stats matches 9 run function glarth:mechanic/quest/9
execute if score quest Stats matches 10 run function glarth:mechanic/quest/10
execute if score quest Stats matches 11 run function glarth:mechanic/quest/11
#Field
execute as @a[x=10,y=26,z=-248,distance=..0.8] run gamerule doTileDrops true
execute as @a[x=8,y=26,z=-248,distance=..1.6] run gamerule doTileDrops false
#POT
scoreboard players set doingPoT Stats 0
execute as @a[scores={PoT=1..}] at @s run function glarth:mechanic/action/pot
execute as @a[scores={PoT2=1..}] at @s run function glarth:mechanic/action/pot2
execute as @a[scores={PoT3=1..}] at @s run function glarth:mechanic/action/pot3
#Functions
execute as @r[x=-67,y=27,z=-211,distance=..10] run function glarth:mechanic/char/gate
execute positioned 10 26 -144 run kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:lead"}}]
function glarth:mechanic/particles
function glarth:mechanic/pickup
function glarth:mechanic/sound
function glarth:mechanic/char/main
#Fishing Rod
tp @e[tag=frA,type=silverfish] 6 27 -144
tp @e[tag=frB,type=silverfish] 9.9 29.0 -143.3
execute as @a[tag=!inFR,x=12,y=27,z=-145,distance=..14] run function glarth:mechanic/char/fishing_rod
execute as @a[tag=inFR,x=12,y=27,z=-145,distance=14.001..] run tag @e remove inFR
#Apples
execute unless score season winter matches 1 run function glarth:mechanic/animation/apples/run
#Misc Animation
execute as @e[tag=tree1] run function glarth:mechanic/animation/tree1
execute if score Gates Animation matches 0..81 run function glarth:mechanic/animation/gates/city/move
execute unless score ship Animation matches 0 run function glarth:mechanic/animation/ship/conversion
# Dialogue
function glarth:dialogue/main
# Game E Table
execute unless score lowGraphics Stats matches 1 as @e[type=armor_stand,tag=etMain] at @s if entity @p[distance=..15] run function ench:table/main
# Sleep
execute as @a[scores={sleep=1..}] at @s if block ~ ~ ~ #minecraft:beds run tag @s add hasSlept
execute as @a[tag=hasSlept] at @s unless block ~ ~ ~ #minecraft:beds run scoreboard players set @s sleep 0
execute as @a[tag=hasSlept] at @s unless block ~ ~ ~ #minecraft:beds run tag @s remove hasSlept
execute if entity @a[gamemode=adventure,scores={sleep=1..},tag=hasSlept] run scoreboard players set travel Dis 5
execute if entity @a[gamemode=adventure,scores={sleep=1..},tag=hasSlept] run function glarth:mechanic/travel_forwards
execute if entity @a[gamemode=adventure,scores={sleep=1..},tag=hasSlept] run function glarth:mechanic/time/forcetime


# pig fix (1.17)
execute positioned 22 26 -209 as @e[type=pig,distance=3..] at @s unless block ~ ~ ~ #glarth:not_solid unless block ~ ~ ~ #minecraft:all[waterlogged=true] run tp @a[distance=..3] 7 26.5 -201
execute positioned 22 26 -209 as @e[type=pig,distance=3..] at @s unless block ~ ~ ~ #glarth:not_solid unless block ~ ~ ~ #minecraft:all[waterlogged=true] run kill @s