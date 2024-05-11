tag @a[tag=inTBC,gamemode=adventure] remove tbcWinReady
execute as @a[tag=inTBC,gamemode=adventure] if score @s tbcStaminaActual = @s tbcStamina if score @s tbcHealth = @s tbcHealthOnly run tag @s add tbcWinReady
execute if score winReady tbcStats matches 1 run tag @a[tag=inTBC,gamemode=adventure] add tbcWinReady


execute if score winDelay tbcStats matches 5 as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.8
execute if score winDelay tbcStats matches 3.. if score quest Stats matches 2 if score doFireworks tbcStats matches 0 if score lobbyTBC Stats matches 1.. run schedule function glarth:combat/celebrate 1t append
execute if score winDelay tbcStats matches 3.. if score quest Stats matches 2 if score doFireworks tbcStats matches 0 if score lobbyTBC Stats matches 1.. run schedule function glarth:combat/celebrate 11t append
execute if score winDelay tbcStats matches 3.. if score quest Stats matches 2 if score doFireworks tbcStats matches 1 run schedule function glarth:combat/celebrate 1t append
execute if score winDelay tbcStats matches 3.. if score quest Stats matches 2 if score doFireworks tbcStats matches 1 run schedule function glarth:combat/celebrate 11t append
execute if score winDelay tbcStats matches 3.. unless score quest Stats matches 2 run schedule function glarth:combat/celebrate 1t append
execute if score winDelay tbcStats matches 3.. unless score quest Stats matches 2 run schedule function glarth:combat/celebrate 11t append
scoreboard players remove winDelay tbcStats 1
execute if score winDelay tbcStats matches -2 run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"white"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.adjust","color":"gray"},"\n"]
execute if entity @a[tag=inTBC,gamemode=adventure,tag=!tbcWinReady] if score TBC Stats matches 1 run schedule function glarth:combat/win_attempt 20
execute unless entity @a[tag=inTBC,gamemode=adventure,tag=!tbcWinReady] if score TBC Stats matches 1 if score winDelay tbcStats matches 1.. run schedule function glarth:combat/win_attempt 20
execute unless entity @a[tag=inTBC,gamemode=adventure,tag=!tbcWinReady] if score TBC Stats matches 1 if score winDelay tbcStats matches ..0 run function glarth:combat/win