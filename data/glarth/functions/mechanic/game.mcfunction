#Game
scoreboard players set playing Stats 0
execute @a[m=2] ~ ~ ~ scoreboard players add playing Stats 1
gamemode 3 @a[score_deathT_min=1,score_deathT=1]
tp @a[score_deathT_min=1,score_deathT=1] @r[m=2]
execute @e[tag=area_main] ~ ~ ~ scoreboard players test playing Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"gameover","color":"red"}]
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ playsound lose player @a ~ ~ ~ 1000 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/end
function mctsts:mechanic/time
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2359
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!infmode] ~ ~ ~ tellraw @a ["",{"translate":"time","color":"red"}]
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!infmode] ~ ~ ~ playsound lose player @a ~ ~ ~ 1000 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!infmode] ~ ~ ~ function mctsts:mechanic/end
execute @e[tag=boss] ~ ~ ~ scoreboard players tag @a[m=2] add inFight
execute @r[tag=inFight] ~ ~ ~ execute @e[tag=area_main] ~ ~ ~ testfor @e[tag=boss]
execute @r[tag=inFight] ~ ~ ~ execute @e[tag=area_main,score_Success=0] ~ ~ ~ function mctsts:mechanic/win_msg
execute @r[tag=inFight] ~ ~ ~ execute @e[tag=area_main,score_Success=0] ~ ~ ~ function mctsts:mechanic/sound/win
execute @r[tag=inFight] ~ ~ ~ execute @e[tag=area_main] ~ ~ ~ testfor @e[tag=boss]
execute @r[tag=inFight] ~ ~ ~ execute @e[tag=area_main,score_Success=0] ~ ~ ~ function mctsts:mechanic/win_ad
#Functions
function bentechy:sapling/main
#Mechanics
effect @a[x=-41,y=27,z=-215,r=8] 19 1 1 true
#Quest
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/3
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/5
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/quest/6
#Actions
execute @e[tag=meteor] ~ ~ ~ function mctsts:mechanic/action/meteor
execute @e[tag=graveyard_open] ~ ~ ~ function mctsts:mechanic/action/graveyard_open
execute @e[tag=mine_wall] ~ ~ ~ function mctsts:mechanic/action/mine_wall
execute @e[tag=cave_wall] ~ ~ ~ function mctsts:mechanic/action/cave_wall
execute @e[tag=open_seal] ~ ~ ~ function mctsts:mechanic/action/open_seal
execute @e[tag=blaze_coin] ~ ~ ~ function mctsts:mechanic/action/blaze_coin
execute @e[tag=walk_away] ~ ~ ~ function mctsts:mechanic/action/walk_away
execute @e[tag=nether_gate] ~ ~ ~ function mctsts:mechanic/action/nether_gate
execute @e[tag=bread] ~ ~ ~ function mctsts:mechanic/action/bread
execute @e[tag=ghost1w] ~ ~ ~ function mctsts:mechanic/action/ghost1
execute @e[tag=ghost2w] ~ ~ ~ function mctsts:mechanic/action/ghost2
execute @e[tag=run_off] ~ ~ ~ function mctsts:mechanic/action/run_off
execute @e[tag=fly_off] ~ ~ ~ function mctsts:mechanic/action/fly_off
execute @e[tag=360] ~ ~ ~ function mctsts:mechanic/action/360
execute @e[tag=tp] ~ ~ ~ function mctsts:mechanic/action/tp
execute @e[tag=die] ~ ~ ~ function mctsts:mechanic/action/die
execute @e[tag=die2] ~ ~ ~ function mctsts:mechanic/action/die2
#Trash Item Clear
clear @a wheat_seeds
clear @a web
#Pickup
execute @a ~ ~ ~ entitydata @e[rm=5,tag=pickup_name] {CustomNameVisible:0}
execute @a ~ ~ ~ entitydata @e[r=4,tag=pickup_name] {CustomNameVisible:1}
#Field
execute @a[x=10,y=27,z=-248,dy=0] ~ ~ ~ gamerule doTileDrops true
execute @a[x=8,y=27,z=-248,dy=0] ~ ~ ~ gamerule doTileDrops false
#Field Gate
execute @e[tag=area_main] ~ ~ ~ scoreboard players test gate Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 9 26 -248 9 26 -248 minecraft:spruce_fence_gate facing=east,open=false
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 9 27 -248 minecraft:barrier
execute @e[tag=area_main] ~ ~ ~ scoreboard players test gate Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 9 26 -248 9 26 -248 minecraft:spruce_fence_gate facing=east,open=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 9 27 -248 minecraft:air
#Bottles
scoreboard players tag @a add holdsBottle {SelectedItem:{id:"minecraft:glass_bottle"}}
scoreboard players tag @a remove holdsBottle {SelectedItem:{id:"minecraft:glass_bottle",tag:{HideFlags:63}}}
replaceitem entity @a[tag=holdsBottle] slot.weapon glass_bottle 1 0 {CanPlaceOn:["water","flowing_water"],HideFlags:63}
scoreboard players tag @a remove holdsBottle
#Slime Helmet
scoreboard players tag @a remove hasSH
scoreboard players tag @a add hasSH {Inventory:[{id:"minecraft:chainmail_helmet",tag:{display:{LocName:"item.slime_helmet"}},Slot:103b}]}
effect @a[x=-1,y=19,z=-122,r=7,tag=!hasSH] 19 1 10 true
effect @a[x=-1,y=19,z=-113,r=7,tag=!hasSH] 19 1 120 true
effect @a[x=-5,y=20,z=-104,r=7,tag=!hasSH] 7 1 10 true
effect @a[x=2,y=28,z=-101,r=15,tag=!hasSH] 19 1 10 true
#POT
scoreboard players tag @r add func
execute @e[tag=area_main] ~ ~ ~ effect @a[tag=func] 4 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players set @a[tag=func] PoT 100
scoreboard players tag @a remove func
execute @a[score_PoT_min=1] ~ ~ ~ function mctsts:mechanic/pot
#Functions
execute @r[x=-67,y=27,z=-211,r=10] ~ ~ ~ function mctsts:mechanic/gate
function mctsts:mechanic/particles
function mctsts:mechanic/pickup
function mctsts:mechanic/sound
function mctsts:char/char
