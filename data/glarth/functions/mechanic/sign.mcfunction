scoreboard players set @a[scores={sign=1..1}] particles 0
tellraw @a[scores={sign=1..1}] ["",{"translate":"particles.none","color":"red"}]
scoreboard players set @a[scores={sign=2..2}] particles 1
tellraw @a[scores={sign=2..2}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.1","color":"green","italic":true}]}]
scoreboard players set @a[scores={sign=3..3}] particles 2
tellraw @a[scores={sign=3..3}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.2","color":"green","italic":true}]}]
scoreboard players set @a[scores={sign=4..4}] particles 3
tellraw @a[scores={sign=4..4}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.3","color":"green","italic":true}]}]
scoreboard players set @a[scores={sign=5..5}] particles 4
tellraw @a[scores={sign=5..5}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.4","color":"green","italic":true}]}]
scoreboard players set @a[scores={sign=6..6}] particles 5
tellraw @a[scores={sign=6..6}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.5","color":"green","italic":true}]}]
scoreboard players set @a[scores={sign=7..7}] particles 6
tellraw @a[scores={sign=7..7}] ["",{"translate":"particles","color":"green","with":[{"translate":"particles.6","color":"green","italic":true}]}]

execute as @a[scores={sign=8..8}] run data merge block 111 20 -145 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"translate\":\"sign.infmode\",\"color\":\"dark_gray\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger sign set 9\"},\"translate\":\"sign.on\",\"color\":\"dark_green\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"}
execute as @a[scores={sign=8..8}] run tellraw @s ["",{"translate":"infmode.on","color":"dark_green"}]
execute as @a[scores={sign=8..8}] run tag @e[tag=area_main] add infmode

execute as @a[scores={sign=9..9}] run data merge block 111 20 -145 {Text1:"[{\"text\":\"\"}]",Text2:"[{\"translate\":\"sign.infmode\",\"color\":\"dark_gray\",\"bold\":\"true\"}]",Text3:"[{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger sign set 8\"},\"translate\":\"sign.off\",\"color\":\"dark_red\",\"bold\":\"true\"}]",Text4:"[{\"text\":\"\"}]"}
execute as @a[scores={sign=9..9}] run tellraw @s ["",{"translate":"infmode.off","color":"dark_red"}]
execute as @a[scores={sign=9..9}] run tag @e[tag=area_main] remove infmode

scoreboard players enable @a[scores={sign=1..}] sign
scoreboard players set @a[scores={sign=1..}] sign 0