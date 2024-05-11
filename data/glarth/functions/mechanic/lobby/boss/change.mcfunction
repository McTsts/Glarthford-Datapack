setblock 177 25 -114 air
setblock 175 24 -114 air
setblock 173 25 -114 air

clone 180 27 -68 174 23 -71 172 23 -118

execute if score bossRe Stats matches 0.. run setblock 175 24 -114 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"lobby.boss.redo","bold":true,"clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!lSpec] if score difficulty Stats matches 1.. run function glarth:mechanic/lobby/boss/redo"}}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=lSpec] run playsound minecraft:error player @s ~ ~ ~ 1 1"}}',Text1: '{"clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!lSpec] if score difficulty Stats matches 0 run playsound minecraft:error player @s ~ ~ ~ 1 1"},"text":""}'}
execute if score bossRe Stats matches 0.. run setblock 173 25 -114 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"lobby.boss.previous","bold":true,"clickEvent":{"action":"run_command","value":"function glarth:mechanic/lobby/boss/previous"}}'}
execute if score bossRe Stats matches 0.. run setblock 177 25 -114 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"lobby.boss.next","bold":true,"clickEvent":{"action":"run_command","value":"function glarth:mechanic/lobby/boss/next"}}'}

execute if score bossRe Stats matches -1 run clone 180 27 -68 174 23 -71 172 23 -118
execute if score bossRe Stats matches 0 run function glarth:mechanic/lobby/boss/0
execute if score bossRe Stats matches 1 run function glarth:mechanic/lobby/boss/1
execute if score bossRe Stats matches 2 run function glarth:mechanic/lobby/boss/9
execute if score bossRe Stats matches 3 run function glarth:mechanic/lobby/boss/2
execute if score bossRe Stats matches 4 run function glarth:mechanic/lobby/boss/3
execute if score bossRe Stats matches 5 run function glarth:mechanic/lobby/boss/5
execute if score bossRe Stats matches 6 run function glarth:mechanic/lobby/boss/8
execute if score bossRe Stats matches 7 run function glarth:mechanic/lobby/boss/6
execute if score bossRe Stats matches 8 run function glarth:mechanic/lobby/boss/7
execute if score bossRe Stats matches 9 run function glarth:mechanic/lobby/boss/4
execute if score bossRe Stats matches 10 run function glarth:mechanic/lobby/boss/10


scoreboard players set bossMax Stats 15