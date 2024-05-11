#Specific Randomized
execute @r[score_trigger_min=1] ~ ~ ~ function mctsts:mechanic/trigger
execute @r[score_particles_min=1] ~ ~ ~ function mctsts:mechanic/player_particles
execute @r[score_sign_min=1] ~ ~ ~ function mctsts:mechanic/sign
execute @r[x=102,y=32,z=-204,r=7] ~ ~ ~ function mctsts:mechanic/ruby
execute @r[type=!Player,tag=DR] ~ ~ ~ function mctsts:mechanic/door
execute @r[x=113,y=19,z=-133,r=40] ~ ~ ~ function mctsts:mechanic/lobby/mechanic
execute @r[x=-4,y=19,z=-109,r=10] ~ ~ ~ function mctsts:mechanic/bucket
execute @a[tag=credits] ~ ~ ~ function mctsts:mechanic/lobby/credits
function mctsts:mechanic/music
function mctsts:mechanic/hint
function mctsts:mechanic/advancements
#Game
execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/game
#Slime
execute @e[type=slime,tag=!minion] ~ ~ ~ kill @s[type=slime,tag=!boss]
#Team
scoreboard teams join player @a[tag=!colored_name,team=!player]
#Tnt
scoreboard players tag @e add tnt {Fuse:1s}
execute @e[tag=tnt] ~ ~ ~ summon creeper ~ ~-2 ~ {Fuse:0}
kill @e[tag=tnt]
#Final Fixes
effect @a[x=92,y=19,z=-133,r=5] 16 999999 120 true
scoreboard players tag @e[type=item] add kill {Item:{id:"minecraft:spruce_fence"}}
kill @e[tag=kill]
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -1 46 -334 air
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 0 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -1 46 -334 stone 6
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -1 46 -334 stone 6
