scoreboard players set total progress 0
	scoreboard players set helmet progress 0
	scoreboard players set bucket progress 0
		scoreboard players set wooden progress 0
		scoreboard players set dock progress 0
		scoreboard players set sailor progress 0

#Helmet
execute if entity @a[scores={iApple=1..}] run scoreboard players set helmet progress 1
execute if entity @a[scores={iGold=1..}] run scoreboard players set helmet progress 3
execute if entity @a[scores={iCHelmet=1..}] run scoreboard players set helmet progress 5

execute if entity @e[tag=witch,tag=c] run scoreboard players add helmet progress 1
execute if entity @a[scores={iPPie=1..}] run scoreboard players add helmet progress 2

execute if entity @a[scores={iSHelmet=1..}] run scoreboard players set helmet progress 12

#Bucket
execute if entity @a[tag=triedAstro] run scoreboard players set wooden progress 1
execute if score time Dis matches 1300.. run scoreboard players set wooden progress 0
execute if entity @a[scores={iPBucket=1..}] run scoreboard players set wooden progress 2
execute if entity @a[scores={iSponge=1..}] run scoreboard players set wooden progress 4
execute if entity @e[tag=bucketm,tag=a] run scoreboard players set wooden progress 6
execute if entity @a[scores={iWBucket=1..}] run scoreboard players set wooden progress 8

execute if entity @a[scores={iKey=1..}] run scoreboard players set sailor progress 2
execute if entity @a[scores={iGrail=1..}] run scoreboard players set sailor progress 4
execute if entity @a[scores={iAmethyst=1..}] run scoreboard players set sailor progress 6
execute if entity @e[tag=sailor,tag=a] run scoreboard players set sailor progress 8

execute if entity @a[scores={iCoal=01..}] run scoreboard players set dock progress 1
execute if entity @a[scores={iCoal=04..}] run scoreboard players set dock progress 2
execute if entity @a[scores={iCoal=06..}] run scoreboard players set dock progress 3
execute if entity @a[scores={iCoal=08..}] run scoreboard players set dock progress 4
execute if entity @a[scores={iCoal=12..}] run scoreboard players set dock progress 5
execute if entity @a[scores={iCoal=16..}] run scoreboard players set dock progress 6
execute if entity @e[tag=dockmaster,tag=c] run scoreboard players set dock progress 8

scoreboard players operation bucket progress = wooden progress
scoreboard players operation bucket progress > sailor progress
scoreboard players operation bucket progress > dock progress

execute if entity @e[tag=explorer,tag=b] run scoreboard players set bucket progress 12
execute if entity @e[tag=dockmaster,tag=d] run scoreboard players set bucket progress 12

#Total
scoreboard players operation total progress = helmet progress
scoreboard players operation total progress += bucket progress
execute if entity @a[tag=hasWon] run scoreboard players set total progress 25

#Final
scoreboard players operation progress Dis = total progress
