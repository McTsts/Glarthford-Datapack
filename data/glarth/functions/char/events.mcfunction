

execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 430 430
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a[tag=!tip1] {"translate":"tip1","color":"green","italic":true}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @a add tip1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 500 500
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=butcher] remove sleep
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tp @e[tag=butcher] -6 26 -215 -90 0
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=butcher] {Pose:{Head:[0f,0f,0f]},NoGravity:0}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ blockdata -2 30 -214 {Lock:"locked"}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 530 530
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a[tag=!tip2] {"translate":"tip2","color":"green","italic":true}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @a add tip2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 630 630
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a[tag=!tip4] {"translate":"tip4","color":"green","italic":true}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @a add tip4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 700 700
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=baker] remove sleep
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tp @e[tag=baker] 15 26 -214 0 0
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=baker] {Pose:{Head:[0f,0f,0f]},NoGravity:0}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ blockdata 14 26 -217 {Lock:"locked"}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ blockdata 17 30 -215 {Lock:"locked"}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=ghost1] add ghost1w
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=ghost2] add ghost2w
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 730 730
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=zombie] {Fire:10000s}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 800 800
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=lumberjack] remove sleep
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=skeleton] {Fire:10000s}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ blockdata 77 28 -257 {Lock:"locked"}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[tag=zombie] ~ ~ ~ particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.2 40
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ kill @e[tag=zombie]
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 900 900
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/1
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 901 901
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/2
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 902 902
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/3
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 903 903
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1000 1000
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[tag=skeleton] ~ ~ ~ particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.2 40
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ kill @e[tag=skeleton]
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1000 1000
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=guard] remove sleep
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ blockdata 21 26 -186 {Lock:"locked"}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1100 1100
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -23 26 -201 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:38,tag:{Unbreakable:1}}],Tags:["char","soldier"],Rotation:[90f,0f],CustomName:"Soldier",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1200 1200
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ playsound clock master @a -6 48 -185 6 1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1300 1300
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ detect 47 26 -190 tallgrass * summon minecraft:area_effect_cloud 50.0 26 -185.0 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["meteor"]}
	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1500
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=soldier] add die
	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1700 1700
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ weather rain
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1745 1745
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ weather thunder
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1755 1755
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[type=pig] ~ ~ ~ function mctsts:mechanic/action/pigman
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1756 1756
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[tag=pigman2] ~ ~ ~ summon minecraft:lightning_bolt ~ ~ ~ 
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1800 1800
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ weather rain
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1830 1830
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ weather clear
	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2100 2100
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -81 27 -216 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:59,tag:{Unbreakable:1}}],Tags:["char","ghost1"],Rotation:[-20f,0f],CustomName:"Ghost",Team:white,CustomNameVisible:1}
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -81 27 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:60,tag:{Unbreakable:1}}],Tags:["char","ghost2"],Rotation:[-160f,0f],CustomName:"Ghost",Team:white,CustomNameVisible:1}
	
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2100 2100
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/4b
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2101 2101
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/3b
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2102 2102
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/2b
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2103 2103
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/gate/1b
	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2343 2343
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @s[tag=!infmode] ~ ~ ~ execute @a ~ ~ ~ playsound time master @s ~ ~ ~ 10 1

execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2343 
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ stopsound @a record
	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2400 2400
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/restart

	
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:char/events_end
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
	execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:char/events_slime
	
scoreboard players tag @a[tag=!tip3] add haspot {Inventory:[{tag:{display:{LocName:"item.pot"}}}]}
execute @a[tag=haspot] ~ ~ ~ tellraw @s[tag=!tip3] {"translate":"tip3","color":"green","italic":true}
scoreboard players tag @a[tag=haspot] add tip3
scoreboard players tag @a[tag=haspot] remove haspot

