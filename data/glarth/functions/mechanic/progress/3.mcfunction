scoreboard players set total progress 0
	scoreboard players set coin progress 0
	scoreboard players set shovel progress 0
		scoreboard players set digger progress 0
		scoreboard players set lumber progress 0

#Coin
execute if entity @a[scores={iCoal=1..}] run scoreboard players add coin progress 2
execute if entity @a[scores={iBPowder=1..}] run scoreboard players add coin progress 2
execute if entity @e[tag=blacksmith,tag=d] run scoreboard players add coin progress 1

execute if entity @e[tag=blacksmith,tag=e] run scoreboard players set coin progress 6
execute if entity @e[tag=blacksmith,tag=g] run scoreboard players set coin progress 8
execute if entity @e[tag=events,tag=pigman_a] run scoreboard players set coin progress 10

#Pickaxe
execute if entity @a[scores={iRose=1..}] run scoreboard players add digger progress 2
execute if entity @a[scores={iLetter=1..}] run scoreboard players add digger progress 1
execute if entity @e[tag=graveyard,tag=a] run scoreboard players add digger progress 2
execute if entity @e[tag=digger,tag=a] run scoreboard players set digger progress 6

execute if entity @a[scores={iCookie=1..}] run scoreboard players set lumber progress 1
execute if entity @a[scores={iBow=1..}] run scoreboard players set lumber progress 1
execute if entity @e[tag=worker,tag=a] run scoreboard players set lumber progress 2
execute if entity @a[scores={iBottle=1..}] run scoreboard players set lumber progress 3
execute if entity @a[scores={iWater=1..}] run scoreboard players set lumber progress 4
execute if entity @e[tag=lumberjack,tag=b] run scoreboard players set lumber progress 6

scoreboard players operation shovel progress = digger progress
scoreboard players operation shovel progress > lumber progress
execute if block -82 26 -204 air if block -83 26 -204 air run scoreboard players set shovel progress 10

#Total
scoreboard players operation total progress = coin progress
scoreboard players operation total progress += shovel progress
execute if entity @a[scores={iFRPotion=1..}] run scoreboard players add total progress 1
execute if entity @e[tag=graveyard,tag=a] run scoreboard players add total progress 1
execute if score blazes Stats matches 1 run scoreboard players add total progress 1
execute if score blazes Stats matches 0 run scoreboard players add total progress 2
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
