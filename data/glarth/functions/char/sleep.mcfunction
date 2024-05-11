scoreboard players add @s Sleep 1
execute @s[score_Sleep_min=10,score_Sleep=10] ~ ~ ~ summon armor_stand ~ ~1.4 ~ {Tags:["zzz"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:Z,NoGravity:1,Team:gray}
execute @s[score_Sleep_min=20,score_Sleep=20] ~ ~ ~ entitydata @e[tag=zzz,c=1] {CustomName:"Zz"}
execute @s[score_Sleep_min=30,score_Sleep=30] ~ ~ ~ entitydata @e[tag=zzz,c=1] {CustomName:"Zzz"}
execute @s[score_Sleep_min=40,score_Sleep=40] ~ ~ ~ kill @e[tag=zzz,c=1] 
scoreboard players set @s[score_Sleep_min=40,score_Sleep=40] Sleep 0