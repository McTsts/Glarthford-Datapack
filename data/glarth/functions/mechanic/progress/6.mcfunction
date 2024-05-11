scoreboard players set total progress 0
	scoreboard players set Ed progress 0
	scoreboard players set Ew progress 0
	scoreboard players set Ef progress 0
	scoreboard players set Ei progress 0
	scoreboard players set Ea progress 0
	scoreboard players set sword progress 0
	scoreboard players set story progress 0

#Story
execute if entity @a[scores={iLetter=1..}] run scoreboard players set story progress 1
execute if entity @e[tag=graveyard,tag=a] run scoreboard players set story progress 2
execute if entity @e[tag=percival,tag=b] run scoreboard players set story progress 3

#Essence Darkness
execute if entity @a[scores={iSapling=1..}] run scoreboard players set Ed progress 1
execute if entity @a[scores={iIron=1..}] run scoreboard players set Ed progress 1
execute if entity @a[scores={iCauldron=1..}] run scoreboard players set Ed progress 2
execute if entity @a[scores={iHPotion=1..}] run scoreboard players set Ed progress 3
execute if entity @a[scores={iHPotionS=1..}] run scoreboard players set Ed progress 3
execute if entity @a[scores={iEDarkness=1..}] run scoreboard players set Ed progress 4

#Essence Water
execute if entity @e[tag=farmer,tag=b] run scoreboard players set Ew progress 1
execute if entity @a[scores={iBeetroot=1..}] run scoreboard players set Ew progress 2
execute if entity @a[scores={iEWater=1..}] run scoreboard players set Ew progress 3

#Essence Forest
execute if entity @a[scores={iSapling=1..}] run scoreboard players set Ef progress 1
execute if entity @a[scores={iBranch=1..}] run scoreboard players set Ef progress 2
execute if entity @a[scores={iEForest=1..}] run scoreboard players set Ef progress 3

#Essence Air
execute if entity @a[scores={iFeather=1..}] run scoreboard players set Ea progress 1
execute if entity @a[scores={iFeather=3..}] run scoreboard players set Ea progress 2
execute if entity @a[scores={iFeather=5..}] run scoreboard players set Ea progress 3
execute if entity @a[scores={iEAir=1..}] run scoreboard players set Ea progress 4

#Essence Fire
execute if entity @a[scores={iBPowder=1..}] run scoreboard players set Ei progress 1
execute if entity @a[scores={iEFire=1..}] run scoreboard players set Ei progress 2

# Diamond Sword
execute if entity @a[scores={iApple=1..}] run scoreboard players set sword progress 1
execute if entity @a[scores={iGold=1..}] run scoreboard players set sword progress 2
execute if entity @a[scores={iStick=1..}] run scoreboard players add sword progress 1
execute if entity @a[scores={iDiamond=1..}] run scoreboard players add sword progress 1
execute if entity @a[scores={iDSword=1..}] run scoreboard players set sword progress 4

#Total
scoreboard players operation total progress = story progress
scoreboard players operation total progress += sword progress
scoreboard players operation total progress += Ed progress
scoreboard players operation total progress += Ew progress
scoreboard players operation total progress += Ef progress
scoreboard players operation total progress += Ea progress
scoreboard players operation total progress += Ei progress
execute if entity @a[scores={iGHoe=1..}] run scoreboard players set total progress 22
execute if entity @e[tag=ent_king,tag=c] run scoreboard players set total progress 23
execute if entity @e[tag=ent_king,tag=d] run scoreboard players set total progress 24
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
