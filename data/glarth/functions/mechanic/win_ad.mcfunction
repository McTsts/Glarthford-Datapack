#Advancements
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b1
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b2
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b3
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b4
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b5
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:places/b6
			
			scoreboard players add @a[m=2] adVictory 1
			advancement grant @a[score_adVictory_min=1] only custom:victory/1
			advancement grant @a[score_adVictory_min=3] only custom:victory/3
			advancement grant @a[score_adVictory_min=5] only custom:victory/5
			function mctsts:mechanic/end