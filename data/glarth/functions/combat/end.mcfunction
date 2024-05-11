execute if score lobbyTBC Stats matches 1.. unless entity @a[gamemode=adventure] run tellraw @a ["\n",{"translate":"gameover","color":"red"}]
execute unless score game Stats matches 0 run schedule function glarth:combat/restart_music 20

execute if score lobbyTBC Stats matches 1 as @a[gamemode=spectator] run function glarth:mechanic/action/lobby

schedule function glarth:dialogue/all 20t

execute if score lobbyTBC Stats matches 1 run gamemode adventure @a[tag=tbcLobbyKilled]
execute if score lobbyTBC Stats matches 1 run tag @a[tag=tbcLobbyKilled] add inTBC
execute if score lobbyTBC Stats matches 1 run tag @a remove tbcLobbyKilled

execute as @a[tag=inTBC,gamemode=adventure] at @s if score game Stats matches 1 run function glarth:combat/set_pos
execute as @a[tag=inTBC,gamemode=adventure] at @s if score lobbyTBC Stats matches 1 run tellraw @s ""
execute as @a[tag=inTBC,gamemode=adventure] at @s if score lobbyTBC Stats matches 1 run function glarth:mechanic/action/lobby
function glarth:combat/peffect/clear
execute as @a[tag=inTBC,gamemode=adventure] if score game Stats matches 1 run function glarth:combat/peffect/restore
clear @a[tag=inTBC]
function glarth:combat/reset
scoreboard players set TBC Stats 0
gamerule naturalRegeneration true
effect give @a minecraft:resistance 3 120 true
effect clear @a water_breathing
effect clear @a absorption
effect clear @s minecraft:weakness
effect clear @s minecraft:night_vision


data modify storage glarth:main inv set from storage glarth:main combat.inv[0]
execute as @a[scores={playerid=1},gamemode=adventure] run function glarth:inventory/load
data modify storage glarth:main inv set from storage glarth:main combat.inv[1]
execute as @a[scores={playerid=2},gamemode=adventure] run function glarth:inventory/load
data modify storage glarth:main inv set from storage glarth:main combat.inv[2]
execute as @a[scores={playerid=3},gamemode=adventure] run function glarth:inventory/load

effect give @a[gamemode=adventure] blindness 3 0 true

gamerule keepInventory false

data modify storage glarth:main temp set value []
data modify storage glarth:main temp append from storage glarth:main combat.comp[][]

#tellraw @a {"storage":"glarth:main","nbt":"temp"}
function glarth:combat/restore_companion

scoreboard players set tbcUnlocked Stats 3

scoreboard objectives setdisplay sidebar Time
scoreboard objectives setdisplay sidebar.team.white TimeDim

execute if score lobbyTBC Stats matches 1 run clear @a[gamemode=!creative]
execute if score lobbyTBC Stats matches 1 run effect clear @a[gamemode=!creative]
execute if score lobbyTBC Stats matches 1 run effect give @a minecraft:instant_health 1 120 true
execute if score lobbyTBC Stats matches 1 run scoreboard players set lobbyTBC Stats 0

execute if score lobbyTBC Stats matches 2 unless score boss_rush Stats matches 20 run schedule clear glarth:combat/reset_delayed
execute if score lobbyTBC Stats matches 2 unless score boss_rush Stats matches 20 run tellraw @a ["\n"]
execute if score lobbyTBC Stats matches 2 unless score boss_rush Stats matches 20 run function glarth:combat/boss_rush/time
execute if score lobbyTBC Stats matches 2 unless score boss_rush Stats matches 20 run schedule function glarth:combat/boss_rush/next 1t
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run clear @a[gamemode=!creative]
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run effect clear @a[gamemode=!creative]
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run effect give @a minecraft:instant_health 1 120 true
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run tellraw @a ["\n",{"translate":"victory","color":"red"}]
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run function glarth:combat/boss_rush/time
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run tellraw @a [{"translate":"stories3","color":"red"},"\n"]
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 as @a[gamemode=!creative] run function glarth:mechanic/action/lobby
execute if score lobbyTBC Stats matches 2 if score boss_rush Stats matches 20 run scoreboard players set lobbyTBC Stats 0

scoreboard players set debug tbcStats 0
scoreboard players reset * tbcA