scoreboard players tag @e[tag=lobby_hit] remove hurt
scoreboard players tag @e[tag=lobby_hit] add hurt {HurtTime:9s}
execute @e[tag=hurt] ~ ~ ~ execute @s[tag=previous] ~ ~ ~ execute @p[r=6,m=2] ~ ~ ~ execute @s[score_dmg_min=0] ~ ~ ~ function mctsts:mechanic/lobby/previous
execute @e[tag=hurt] ~ ~ ~ execute @s[tag=next] ~ ~ ~ execute @p[r=6,m=2] ~ ~ ~ execute @s[score_dmg_min=0] ~ ~ ~ function mctsts:mechanic/lobby/next
execute @e[tag=hurt] ~ ~ ~ execute @s[tag=credits] ~ ~ ~ execute @p[r=6,m=2] ~ ~ ~ scoreboard players tag @s[score_dmg_min=0] add credits
execute @e[tag=hurt] ~ ~ ~ execute @s[tag=credits] ~ ~ ~ execute @p[r=6,m=2] ~ ~ ~ scoreboard players set @s[score_dmg_min=0] credits 0
execute @e[tag=hurt] ~ ~ ~ execute @p[r=6,m=2] ~ ~ ~ playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2

execute @a[score_trade_min=1] ~ ~ ~ execute @e[type=villager,c=1] ~ ~ ~ execute @s[tag=previous] ~ ~ ~ execute @p[score_trade_min=1] ~ ~ ~ function mctsts:mechanic/lobby/previous
execute @a[score_trade_min=1] ~ ~ ~ execute @e[type=villager,c=1] ~ ~ ~ execute @s[tag=next] ~ ~ ~ execute @p[score_trade_min=1] ~ ~ ~ function mctsts:mechanic/lobby/next
execute @a[score_trade_min=1] ~ ~ ~ execute @e[type=villager,c=1] ~ ~ ~ execute @s[tag=credits] ~ ~ ~ execute @p[score_trade_min=1] ~ ~ ~ scoreboard players tag @s add credits
execute @a[score_trade_min=1] ~ ~ ~ execute @e[type=villager,c=1] ~ ~ ~ execute @s[tag=credits] ~ ~ ~ execute @p[score_trade_min=1] ~ ~ ~ scoreboard players set @s credits 0
execute @a[score_trade_min=1] ~ ~ ~ playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2
scoreboard players set @a[score_trade_min=1] trade 0

execute @e[tag=hurt] ~ ~ ~ scoreboard players reset @a[score_dmg_min=0] dmg

execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[x=123,y=13,z=-134,r=5,m=2] ~ ~ ~ function mctsts:mechanic/start

execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[x=93,y=15,z=-150,r=3,m=2] ~ ~ ~ scoreboard players set quest Stats 6
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[x=93,y=15,z=-150,r=3,m=2] ~ ~ ~ function mctsts:mechanic/start

kill @e[x=118,y=19,z=-134,r=10,type=item]
kill @e[x=108,y=19,z=-120,r=10,type=item]

particle totem 100 20 -123 0.2 0.2 0.2 0.1 1
particle witchMagic 100 20 -119 0.2 0.2 0.2 0 1
particle note 93 20 -119 0.2 0.2 0.2 0.1 1
particle fireworksSpark 93 20 -123 0.2 0.2 0.2 0.1 1
particle flame 99 20 -110 0.2 0.2 0.2 0.1 1
particle enchantmenttable 94 20 -110 0.1 0.1 0.1 0 1 force

execute @e[tag=area_main] ~ ~ ~ testforblock 100 19 -116 air
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 100 20 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 100 19 -116 log
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 100 20 -116 log
execute @e[tag=area_main] ~ ~ ~ testforblock 100 19 -117 minecraft:stone_button powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 100 19 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 100 19 -114 minecraft:stone_button powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 100 19 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 100 19 -114 stone_button powered=false 
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ testforblock 100 19 -117 minecraft:stone_button powered=false
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 100 19 -116 log 

execute @e[tag=area_main] ~ ~ ~ testforblock 93 19 -116 air
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 93 20 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 93 19 -116 log
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 93 20 -116 log
execute @e[tag=area_main] ~ ~ ~ testforblock 96 20 -116 minecraft:wooden_button powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 93 19 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 93 19 -114 minecraft:stone_button powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 93 19 -116 air 0 destroy
execute @e[tag=area_main] ~ ~ ~ testforblock 96 20 -116 wooden_button powered=false 
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ testforblock 93 19 -114 minecraft:stone_button powered=false
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 93 19 -116 log 

tp @e[tag=sleepP] 90 19 -134
scoreboard players tag @a[x=90,y=19,z=-134,r=5] remove sleepP