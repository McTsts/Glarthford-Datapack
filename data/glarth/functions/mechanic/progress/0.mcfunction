scoreboard players set progress Dis 0
execute if entity @e[tag=events,tag=tut2x] run scoreboard players set progress Dis 2
execute if entity @e[tag=events,tag=tut3x] run scoreboard players set progress Dis 4
execute if entity @e[tag=events,tag=tut4x] run scoreboard players set progress Dis 6
execute if entity @a[scores={iWeb=1..}] run scoreboard players add progress Dis 1
execute if entity @a[scores={iWeb=5..}] run scoreboard players add progress Dis 1
execute if entity @a[scores={iWeb=7..}] run scoreboard players add progress Dis 1
execute if entity @a[scores={iGunpowder=1..}] run scoreboard players add progress Dis 2
execute if entity @a[scores={iGunpowder=3..}] run scoreboard players add progress Dis 2
execute if entity @a[scores={iGunpowder=5..}] run scoreboard players add progress Dis 2
execute if entity @a[scores={iSand=1..}] run scoreboard players add progress Dis 1
execute if entity @a[scores={iSand=2..}] run scoreboard players add progress Dis 1
execute if entity @a[scores={iSand=4..}] run scoreboard players add progress Dis 2
execute if entity @a[scores={iTnt=1..}] run scoreboard players set progress Dis 18
execute if entity @e[tag=miner_chief,tag=b] run scoreboard players set progress Dis 22
execute if entity @e[tag=bat_boss] run scoreboard players set progress Dis 23
execute if entity @a[tag=hasWon] run scoreboard players set progress Dis 25
