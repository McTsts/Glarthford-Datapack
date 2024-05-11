scoreboard players set @s tbcMenuX 100
scoreboard players set @s blocked 0
scoreboard players set @s blocking 0
scoreboard players set @s inBlock 1
scoreboard players set @s failedBlock 0
execute as @s[tag=tbcAlly] run function glarth:combat/action_ally/block
