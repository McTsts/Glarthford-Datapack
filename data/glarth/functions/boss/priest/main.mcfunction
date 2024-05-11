scoreboard players add @e[tag=ender_boss] tsTimer 1
execute @e[tag=ender_boss,score_tsTimer_min=100] ~ ~ ~ function mctsts:boss/priest/ability
effect @e[tag=ender_boss] 20 0
execute @e[x=119,y=18,z=-248,r=30] ~ ~ ~ detect ~ ~-1 ~ concrete color=black tp @s 116 29 -248