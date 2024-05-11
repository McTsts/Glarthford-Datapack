scoreboard players set @s MusicTime 0
scoreboard players set r Random 7
function glarth:util/random
execute if score n Random matches 1 run scoreboard players set @s MusicSet 5
execute if score n Random matches 2 run scoreboard players set @s MusicSet 6
execute if score n Random matches 3 run scoreboard players set @s MusicSet 12
execute if score n Random matches 4 run scoreboard players set @s MusicSet 18
execute if score n Random matches 5..7 run scoreboard players set @s MusicSet 26
