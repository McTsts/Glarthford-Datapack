scoreboard players set total progress 0
	scoreboard players set gem progress 0
		scoreboard players set diamond progress 0
		scoreboard players set amethyst progress 0
	scoreboard players set pick progress 0

#Gem
execute if entity @a[scores={iLeather=1..}] run scoreboard players set diamond progress 1
execute if entity @a[scores={iIron=1..}] run scoreboard players set diamond progress 2
execute if entity @e[tag=blacksmith,tag=b] run scoreboard players set diamond progress 3
execute if entity @a[tag=talkedToR] run scoreboard players set diamond progress 5
execute if entity @a[scores={iDiamond=1..}] run scoreboard players set diamond progress 7
execute if entity @e[tag=richard,tag=a] run scoreboard players set diamond progress 0
execute if entity @e[tag=merchant1,tag=d] run scoreboard players set diamond progress 0

execute if entity @a[scores={iKey=1..}] run scoreboard players set amethyst progress 2
execute if entity @a[scores={iGrail=1..}] run scoreboard players set amethyst progress 5
execute if entity @a[scores={iEmerald=1..}] run scoreboard players set amethyst progress 7
execute if entity @a[scores={iAmethyst=1..}] run scoreboard players set amethyst progress 7

scoreboard players operation gem progress = diamond progress
scoreboard players operation gem progress > amethyst progress

execute if entity @e[tag=blacksmith,tag=c] run scoreboard players set gem progress 10
execute if entity @a[gamemode=adventure,tag=enteredMines] run scoreboard players set gem progress 10

#Pickaxe
execute if entity @a[scores={iBread=1..}] run scoreboard players set pick progress 1
execute if entity @a[scores={iSkull=1..}] run scoreboard players set pick progress 3
execute if entity @a[scores={iFermented=1..}] run scoreboard players set pick progress 6
execute if entity @a[scores={iDPickaxe=1..}] run scoreboard players set pick progress 8
execute if entity @e[tag=archaeologist,tag=b] run scoreboard players set pick progress 10

#Total
scoreboard players operation total progress = gem progress
scoreboard players operation total progress += pick progress
execute if entity @a[scores={iRuby=1..}] run scoreboard players add total progress 3
execute if entity @e[tag=archaeologist,tag=c] run scoreboard players set total progress 24
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
