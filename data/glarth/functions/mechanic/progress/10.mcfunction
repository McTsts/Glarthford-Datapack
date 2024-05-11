scoreboard players set total progress 0
	scoreboard players set gem progress 0
		scoreboard players set diamond progress 0
		scoreboard players set amethyst progress 0
	scoreboard players set pick progress 0
	scoreboard players set ts progress 0
	scoreboard players set adri progress 0
	scoreboard players set jerozgen progress 0
	scoreboard players set suso progress 0
	scoreboard players set gibbs progress 0
	scoreboard players set yeah progress 0

#Gem (6)
execute if entity @a[scores={iLeather=1..}] run scoreboard players set diamond progress 1
execute if entity @a[scores={iIron=1..}] run scoreboard players set diamond progress 2
execute if entity @e[tag=blacksmith,tag=b] run scoreboard players set diamond progress 3
execute if entity @a[tag=talkedToR] run scoreboard players set diamond progress 4
execute if entity @a[scores={iDiamond=1..}] run scoreboard players set diamond progress 5
execute if entity @e[tag=richard,tag=a] run scoreboard players set diamond progress 0
execute if entity @e[tag=merchant1,tag=d] run scoreboard players set diamond progress 0

execute if entity @a[scores={iKey=1..}] run scoreboard players set amethyst progress 1
execute if entity @a[scores={iGrail=1..}] run scoreboard players set amethyst progress 3
execute if entity @a[scores={iEmerald=1..}] run scoreboard players set amethyst progress 5
execute if entity @a[scores={iAmethyst=1..}] run scoreboard players set amethyst progress 5

scoreboard players operation gem progress = diamond progress
scoreboard players operation gem progress > amethyst progress

execute if entity @e[tag=blacksmith,tag=c] run scoreboard players set gem progress 6
execute if entity @a[gamemode=adventure,tag=enteredMines] run scoreboard players set gem progress 6

#Pickaxe (6)
execute if entity @e[tag=farmer,tag=b] run scoreboard players set pick progress 1
execute if entity @a[scores={iWheat=1..}] run scoreboard players set pick progress 2
execute if entity @a[scores={iFlour=1..}] run scoreboard players set pick progress 3
execute if entity @a[scores={iBreadFresh=1..}] run scoreboard players set pick progress 4
execute if entity @a[scores={iPickaxe=1..}] run scoreboard players set pick progress 5
execute if entity @a[tag=inSewer] run scoreboard players set pick progress 6

# Ts (2)
execute if entity @a[scores={iRedstone=1..}] run scoreboard players set ts progress 1
execute if entity @e[tag=mctsts,tag=c] run scoreboard players set ts progress 2

# Gibbs (2)
execute if entity @e[tag=gibbs,tag=garyTalked] run scoreboard players set gibbs progress 2

# Adri (2)
execute if entity @e[tag=adri,tag=e] run scoreboard players set adri progress 2

# Jerozgen (2)
execute if entity @e[tag=jerozgen,tag=b] run scoreboard players set jerozgen progress 2

# Suso (2)
execute if entity @e[tag=suso,tag=e] run scoreboard players set suso progress 2

# Yeah (2)
execute if entity @e[tag=gibbs,tag=g] run scoreboard players set yeah progress 1
execute if entity @e[tag=gibbs,tag=h] run scoreboard players set yeah progress 2


#Total
scoreboard players operation total progress = gem progress
scoreboard players operation total progress += pick progress
scoreboard players operation total progress += ts progress
scoreboard players operation total progress += gibbs progress
scoreboard players operation total progress += adri progress
scoreboard players operation total progress += jerozgen progress
scoreboard players operation total progress += suso progress
scoreboard players operation total progress += yeah progress
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
