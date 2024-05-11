execute if score quest Stats matches 1.. run tag @a[gamemode=adventure,tag=wonTwice] add wonThrice
execute if score quest Stats matches 1.. run tag @a[gamemode=adventure,tag=wonOnce] add wonTwice
execute if score quest Stats matches 1.. run tag @a[gamemode=adventure] add wonOnce
execute if score quest Stats matches 0 run scoreboard players add 0 quest 1
execute if score quest Stats matches 1 run scoreboard players add 1 quest 1
execute if score quest Stats matches 2 run scoreboard players add 2 quest 1
execute if score quest Stats matches 3 run scoreboard players add 3 quest 1
execute if score quest Stats matches 4 run scoreboard players add 4 quest 1
execute if score quest Stats matches 5 run scoreboard players add 5 quest 1
execute if score quest Stats matches 6 run scoreboard players add 6 quest 1
execute if score quest Stats matches 7 run scoreboard players add 7 quest 1
execute if score quest Stats matches 8 run scoreboard players add 8 quest 1
execute if score quest Stats matches 9 run scoreboard players add 9 quest 1
execute if score quest Stats matches 10 run scoreboard players add 10 quest 1





execute if score quest Stats matches 0 run scoreboard players set @a[gamemode=adventure] winQ0 1
execute if score quest Stats matches 0 run scoreboard players set @a[gamemode=adventure] unlockQ1 1

execute if score quest Stats matches 1 run scoreboard players set @a[gamemode=adventure] winQ1 1
execute if score quest Stats matches 1 run scoreboard players set @a[gamemode=adventure] unlockQ9 1

execute if score quest Stats matches 2 run scoreboard players set @a[gamemode=adventure] winQ2 1
execute if score quest Stats matches 2 run scoreboard players set @a[gamemode=adventure] unlockQ3 1

execute if score quest Stats matches 3 run scoreboard players set @a[gamemode=adventure] winQ3 1
execute if score quest Stats matches 3 run scoreboard players set @a[gamemode=adventure] unlockQ5 1

execute if score quest Stats matches 4 run scoreboard players set @a[gamemode=adventure] winQ4 1

execute if score quest Stats matches 5 run scoreboard players set @a[gamemode=adventure] winQ5 1
execute if score quest Stats matches 5 run scoreboard players set @a[gamemode=adventure] unlockQ8 1

execute if score quest Stats matches 6 run scoreboard players set @a[gamemode=adventure] winQ6 1
execute if score quest Stats matches 6 run scoreboard players set @a[gamemode=adventure] unlockQ7 1

execute if score quest Stats matches 7 run scoreboard players set @a[gamemode=adventure] winQ7 1
execute if score quest Stats matches 7 run scoreboard players set @a[gamemode=adventure] unlockQ4 1

execute if score quest Stats matches 8 run scoreboard players set @a[gamemode=adventure] winQ8 1
execute if score quest Stats matches 8 run scoreboard players set @a[gamemode=adventure] unlockQ6 1

execute if score quest Stats matches 9 run scoreboard players set @a[gamemode=adventure] winQ9 1
execute if score quest Stats matches 9 run scoreboard players set @a[gamemode=adventure] unlockQ2 1

execute as @a run function glarth:mechanic/adjust_unlock_data