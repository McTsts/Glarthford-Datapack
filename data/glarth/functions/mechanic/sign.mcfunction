scoreboard players set @a[score_sign_min=1,score_sign=1] particles 0
tellraw @a[score_sign_min=1,score_sign=1] ["",{"translate":"particles.none","color":"red"}]
scoreboard players set @a[score_sign_min=2,score_sign=2] particles 1
tellraw @a[score_sign_min=2,score_sign=2] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.1","color":"green","italic":true}]}]
scoreboard players set @a[score_sign_min=3,score_sign=3] particles 2
tellraw @a[score_sign_min=3,score_sign=3] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.2","color":"green","italic":true}]}]
scoreboard players set @a[score_sign_min=4,score_sign=4] particles 3
tellraw @a[score_sign_min=4,score_sign=4] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.3","color":"green","italic":true}]}]
scoreboard players set @a[score_sign_min=5,score_sign=5] particles 4
tellraw @a[score_sign_min=5,score_sign=5] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.4","color":"green","italic":true}]}]
scoreboard players set @a[score_sign_min=6,score_sign=6] particles 5
tellraw @a[score_sign_min=6,score_sign=6] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.5","color":"green","italic":true}]}]
scoreboard players set @a[score_sign_min=7,score_sign=7] particles 6
tellraw @a[score_sign_min=7,score_sign=7] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.6","color":"green","italic":true}]}]

execute @a[score_sign_min=8,score_sign=8] ~ ~ ~ blockdata 111 20 -145 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"translate\":\"sign.infmode\",\"color\":\"dark_gray\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger sign set 9\"},\"translate\":\"sign.on\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"}
execute @a[score_sign_min=8,score_sign=8] ~ ~ ~ tellraw @s ["",{"translate":"infmode.on","color":"dark_green"}]
execute @a[score_sign_min=8,score_sign=8] ~ ~ ~ scoreboard players tag @e[tag=area_main] add infmode

execute @a[score_sign_min=9,score_sign=9] ~ ~ ~ blockdata 111 20 -145 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"translate\":\"sign.infmode\",\"color\":\"dark_gray\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger sign set 8\"},\"translate\":\"sign.off\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"}
execute @a[score_sign_min=9,score_sign=9] ~ ~ ~ tellraw @s ["",{"translate":"infmode.off","color":"dark_red"}]
execute @a[score_sign_min=9,score_sign=9] ~ ~ ~ scoreboard players tag @e[tag=area_main] remove infmode

scoreboard players enable @a[score_sign_min=1] sign
scoreboard players set @a[score_sign_min=1] sign 0