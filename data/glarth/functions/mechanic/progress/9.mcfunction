scoreboard players set total progress 0
scoreboard players set brewery progress 0

# Items
execute if entity @e[type=armor_stand,tag=butcher,tag=a] run scoreboard players add total progress 1
execute if entity @a[scores={iBanner=1..}] run scoreboard players add total progress 6
execute if entity @a[scores={iCrossbow=1..}] run scoreboard players add total progress 6
execute if entity @a[scores={iVindicatorSkull=1..}] run scoreboard players add total progress 6
execute if entity @e[type=armor_stand,tag=pillager_guard1,tag=a] run scoreboard players set brewery progress 1
execute if entity @e[type=armor_stand,tag=thief,tag=a] run scoreboard players set brewery progress 2
execute if block -47 32 -196 air run scoreboard players set brewery progress 3

# Door
execute if entity @e[tag=pillager_guard2,tag=a] run scoreboard players set total progress 21

#Final
scoreboard players operation progress Dis = total progress
scoreboard players operation progress Dis += brewery progress
execute if entity @a[tag=hasWon] run scoreboard players set progress Dis 25