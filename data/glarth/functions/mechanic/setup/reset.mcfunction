#Reset Hints
	tag @a remove hint1
	tag @a remove hint2
	tag @a remove hint3
	tag @a remove hint4
	tag @a remove hint5
	tag @a remove hint5b
	tag @a remove hint6
	tag @a remove hint7
	tag @a remove hint8
	tag @a remove hint9
	tag @a remove hint10
	tag @a remove hint11
	tag @a remove hint12
	tag @a remove hint12b
	tag @a remove tip49
	tag @a remove tip52
	tag @a remove checkedBeacon
#Remove Progress Trackers
	tag @a remove talkedToR
	tag @a remove inSewer
	tag @a remove hasWon
	tag @a remove triedAstro
	tag @a remove workerC
	tag @a remove workerB
	tag @a remove gotMilk
#Pot Reset
	scoreboard players reset * PoT
	scoreboard players reset * PoT2
	scoreboard players reset * PoT3
	scoreboard players reset * PoTd
	scoreboard players reset * PoT2d
	scoreboard players reset * PoT3d
	tag @e[tag=area_main] remove ruby_a
	tag @e[tag=area_main] remove ruby_b
	tag @e[tag=area_main] remove ruby_c
# Resets
	scoreboard players reset * kill
	scoreboard players enable @a kill
	scoreboard players reset * Time
	scoreboard players reset * TimeDim
	scoreboard players reset * dimension
	scoreboard players reset * codDrop
	scoreboard players set tbc Random 1
	execute as @e[type=!player,tag=!area_main] at @s run function glarth:mechanic/kill
	scoreboard players reset maxTime Dis
	scoreboard players reset timer cedric
	scoreboard players set @a credits 0
	tag @a remove credits
	gamerule doTileDrops false
	scoreboard players set barColor Stats 0
	scoreboard players set endStarted Stats 0
	scoreboard players set endStage Stats 0
	scoreboard players set endCheckpoint Stats 0
	scoreboard players set marhjoSaved Stats 0
	scoreboard players set mayorHatless Stats 0
	advancement revoke @a everything
	
	# fix a missing block (probably should be in the quest function but im not sure)
	setblock 22 28 -182 minecraft:acacia_button[face=floor,facing=west,powered=true]