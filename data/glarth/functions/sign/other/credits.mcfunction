gamemode spectator @s 
execute unless score timer credits matches 0.. run scoreboard players set timer credits 0
execute unless score @s MusicNum matches 6 run scoreboard players set @s MusicSet 6
tp @s 7 36 -204 0 0
spectate @e[type=area_effect_cloud,tag=creditsPov,limit=1] @s
fill 20 53 -115 -15 83 -92 lime_wool replace slime_block
time set 0
weather clear