scoreboard players set total progress 0
	scoreboard players set gate progress 0
		scoreboard players set timet progress 0
		scoreboard players set guard progress 0
	scoreboard players set branches progress 0
		scoreboard players set shear progress 0
		scoreboard players set torch progress 0
		
# Time T
execute if entity @a[scores={iEmerald=1..}] run scoreboard players set timet progress 4
execute if entity @e[type=armor_stand,tag=time_traveller,tag=a] run scoreboard players set timet progress 6
execute if entity @a[scores={iOKey=1..}] run scoreboard players set timet progress 8

# Guard
execute if entity @a[scores={iRTulip=1..}] run scoreboard players set guard progress 1
execute if entity @a[scores={iPTulip=1..}] run scoreboard players set guard progress 1
execute if entity @a[scores={iOTulip=1..}] run scoreboard players set guard progress 1
execute if entity @a[scores={iSugar=1..}] run scoreboard players set guard progress 2
execute if entity @a[scores={iApple=1..}] run scoreboard players add guard progress 1
execute if entity @e[type=armor_stand,tag=brewer,tag=a] run scoreboard players set guard progress 4
execute if entity @a[scores={iEPotion=1..}] run scoreboard players set guard progress 6
execute if entity @a[scores={iOKey=1..}] run scoreboard players set guard progress 8

# Gate
scoreboard players operation gate progress = timet progress
scoreboard players operation gate progress > guard progress
execute if entity @e[tag=events,type=area_effect_cloud,tag=ascension_open] run scoreboard players set gate progress 12

# Torch
execute if entity @a[scores={iKey=1..}] run scoreboard players set torch progress 2
execute if entity @a[scores={iGrail=1..}] run scoreboard players set torch progress 4
execute if entity @a[scores={iAmethyst=1..}] run scoreboard players set torch progress 6
execute if entity @e[type=armor_stand,tag=explorer,tag=e] run scoreboard players set torch progress 8
execute if entity @a[scores={iTorch=1..}] run scoreboard players add torch progress 2
execute if entity @e[type=armor_stand,tag=explorer,tag=c] run scoreboard players set torch progress 11

# Shear
execute if entity @a[scores={iBow=1..}] run scoreboard players add shear progress 2
execute if entity @a[scores={iArrow=1..}] run scoreboard players add shear progress 1
execute if entity @a[scores={iSkull=1..}] run scoreboard players add shear progress 2
execute if entity @a[scores={iCarrot=1..}] run scoreboard players set shear progress 6
execute if entity @a[scores={iShears=1..}] run scoreboard players set shear progress 8
execute if entity @e[type=armor_stand,tag=explorer,tag=c] run scoreboard players set shear progress 11

# Branches
scoreboard players operation branches progress = torch progress
scoreboard players operation branches progress > shear progress

# Total
scoreboard players operation total progress = gate progress
scoreboard players operation total progress += branches progress
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
