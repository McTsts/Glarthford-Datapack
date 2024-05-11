scoreboard players set total progress 0
	scoreboard players set ghast progress 0
	scoreboard players set graveyard progress 0
	scoreboard players set piglin progress 0
	scoreboard players set brewer progress 0
	scoreboard players set totem progress 0
	scoreboard players set hoglin progress 0

# Graveyard (4/25)
execute if entity @a[scores={iLetter=1..}] run scoreboard players set graveyard progress 2
execute if entity @e[tag=graveyard,tag=a] run scoreboard players set graveyard progress 4

# Ghast (4/21)
execute if entity @e[tag=nether1,tag=events] run scoreboard players set ghast progress 4

# Gold Armor (4/17)
execute if entity @a[scores={iHMeat=1..}] run scoreboard players set hoglin progress 2
execute if entity @e[tag=events,tag=piglin6_a] run scoreboard players set hoglin progress 4

# Totem (5/13)
execute if entity @a[scores={iApple=1..}] run scoreboard players set totem progress 1
execute if entity @a[scores={iGold=1..}] run scoreboard players set totem progress 2
execute if entity @a[scores={iTotem=1..}] run scoreboard players set totem progress 3
execute if entity @a[scores={iFRPotion=1..}] run scoreboard players add totem progress 1
execute if entity @a[scores={iGTear=1..}] run scoreboard players set hoglin progress 4
execute if entity @a[scores={iGTear=1..}] run scoreboard players set totem progress 5

# Piglins (4/8)
execute if entity @e[tag=nether2,tag=events] run scoreboard players set totem progress 5
execute if entity @e[tag=nether2,tag=events] run scoreboard players set hoglin progress 4

execute if entity @e[tag=nether2,tag=events] run scoreboard players set piglin progress 1
execute if entity @e[tag=nether3,tag=events] run scoreboard players set piglin progress 2
execute if entity @e[tag=nether4,tag=events] run scoreboard players set piglin progress 3
execute if entity @e[tag=nether5,tag=events] run scoreboard players set piglin progress 4

# Potion (3/4)
execute if entity @a[scores={iCookie=1..}] run scoreboard players set brewer progress 1
execute if entity @a[scores={iBow=1..}] run scoreboard players set brewer progress 1
execute if entity @e[tag=worker,tag=a] run scoreboard players set brewer progress 2
execute if entity @e[tag=brewer,tag=regenPotionDone] run scoreboard players set brewer progress 3

#Total
scoreboard players operation total progress = graveyard progress
scoreboard players operation total progress += ghast progress
scoreboard players operation total progress += totem progress
scoreboard players operation total progress += hoglin progress
scoreboard players operation total progress += piglin progress
scoreboard players operation total progress += brewer progress
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress