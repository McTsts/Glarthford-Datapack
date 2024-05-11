scoreboard players set total progress 0
	scoreboard players set eye progress 0
		scoreboard players set adventurer progress 0
		scoreboard players set enderman progress 0
	scoreboard players set blocks progress 0
		scoreboard players set shovel progress 0
			scoreboard players set digger progress 0
			scoreboard players set lumber progress 0
	scoreboard players set gate progress 0
		scoreboard players set farmer progress 0
		scoreboard players set assassin progress 0
	scoreboard players set chorus progress 0
	scoreboard players set ep progress 0

#Blocks (5/25)
execute as @a store result score blocksI progress run clear @s #glarth:eblock 0
scoreboard players set blocksB progress 0
execute unless block 3 27 -328 air run scoreboard players add blocksB progress 1
execute unless block 3 27 -329 air run scoreboard players add blocksB progress 1
execute unless block 3 27 -330 air run scoreboard players add blocksB progress 1
execute unless block 3 27 -331 air run scoreboard players add blocksB progress 1

scoreboard players operation blocks progress = blocksB progress

scoreboard players set maxInvBlock progress 4
scoreboard players operation maxInvBlock progress -= blocksB progress
scoreboard players operation blocksI progress < maxInvBlock progress
scoreboard players operation blocks progress += blocksI progress

execute if score blocksB progress matches 4 run scoreboard players set blocks progress 5
execute if block 2 27 -334 minecraft:end_portal_frame[eye=true] run scoreboard players set blocks progress 5

#Eye (6/20)
execute if entity @a[scores={iDiamond=1..}] run scoreboard players set adventurer progress 1
execute if entity @a[tag=adventurer,tag=a] run scoreboard players set adventurer progress 3

execute if entity @a[scores={iFish=1..}] run scoreboard players set enderman progress 1
execute if entity @a[scores={iISword=1..}] run scoreboard players set enderman progress 2
execute if entity @e[scores={iEPearl=1..}] run scoreboard players set enderman progress 3

scoreboard players operation eye progress = adventurer progress
scoreboard players operation eye progress > enderman progress

execute if entity @a[scores={iBPowder=1..}] run scoreboard players add eye progress 1

execute if entity @a[scores={iEEye=1..}] run scoreboard players set eye progress 5
execute if block 2 27 -334 minecraft:end_portal_frame[eye=true] run scoreboard players set eye progress 6

#Gate (5/14)
execute if entity @a[scores={iApple=1..}] run scoreboard players set assassin progress 1
execute if entity @a[scores={iGold=1..}] run scoreboard players set assassin progress 2
execute if entity @a[scores={iGold=7..}] run scoreboard players set assassin progress 3
execute unless entity @e[tag=farmer] run scoreboard players set assassin progress 5

execute if entity @a[scores={iCookie=1..}] run scoreboard players set farmer progress 1
execute if entity @a[scores={iBow=1..}] run scoreboard players set farmer progress 1
execute if entity @e[tag=worker,tag=a] run scoreboard players set farmer progress 2
execute if entity @a[scores={iBeer=1..}] run scoreboard players set farmer progress 3
execute if entity @a[scores={iDHoe=1..}] run scoreboard players set farmer progress 4
execute if entity @e[tag=farmer,tag=a] run scoreboard players set farmer progress 5

scoreboard players operation gate progress = assassin progress
scoreboard players operation gate progress > farmer progress
execute if block 2 27 -334 minecraft:end_portal_frame[eye=true] run scoreboard players set gate progress 5

# Popped Chorus (3/9)
execute if entity @a[scores={iShulkerShell=1..}] run scoreboard players set chorus progress 1
execute if entity @a[scores={iPCFruit=1..}] run scoreboard players set chorus progress 2
execute if entity @e[tag=ender_guard_s,tag=a] run scoreboard players set chorus progress 3
execute if entity @e[tag=ender_priest,tag=a] run scoreboard players set chorus progress 3

# Ender Priest (5/6)
execute if entity @e[tag=ender_priest,tag=a] run scoreboard players set ep progress 2
execute if entity @e[tag=ender_priest,tag=b,tag=!c] run scoreboard players set ep progress 4
execute if entity @e[tag=ender_priest,tag=b,tag=!c] if entity @e[tag=end_crystal_guardian1] run scoreboard players remove ep progress 1
execute if entity @e[tag=ender_priest,tag=b,tag=!c] if entity @e[tag=end_crystal_guardian2] run scoreboard players remove ep progress 1
execute if entity @e[tag=ender_priest,tag=c] run scoreboard players set ep progress 4
execute if entity @e[tag=ender_priest,tag=f] run scoreboard players set ep progress 5

#Total
scoreboard players operation total progress = blocks progress
scoreboard players operation total progress += eye progress
scoreboard players operation total progress += gate progress
scoreboard players operation total progress += chorus progress
scoreboard players operation total progress += ep progress
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
