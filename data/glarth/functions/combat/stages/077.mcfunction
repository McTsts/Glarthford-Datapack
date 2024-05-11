scoreboard players set evilAttack Temp 1
scoreboard players set evilAttackData Temp 6
execute if score @s evilid matches 1 run scoreboard players operation evilAttack Temp = @p[scores={playerid=1}] lastAttack
execute if score @s evilid matches 2 run scoreboard players operation evilAttack Temp = @p[scores={playerid=2}] lastAttack
execute if score @s evilid matches 3 run scoreboard players operation evilAttack Temp = @p[scores={playerid=3}] lastAttack
execute if score @s evilid matches 1 run scoreboard players operation evilAttackData Temp = @p[scores={playerid=1}] lastAttackData
execute if score @s evilid matches 2 run scoreboard players operation evilAttackData Temp = @p[scores={playerid=2}] lastAttackData
execute if score @s evilid matches 3 run scoreboard players operation evilAttackData Temp = @p[scores={playerid=3}] lastAttackData
execute if score @s evilid matches 1 run scoreboard players operation evilAttackCount Temp = @p[scores={playerid=1}] lastAttackCount
execute if score @s evilid matches 2 run scoreboard players operation evilAttackCount Temp = @p[scores={playerid=2}] lastAttackCount
execute if score @s evilid matches 3 run scoreboard players operation evilAttackCount Temp = @p[scores={playerid=3}] lastAttackCount

execute if score @s evilid matches 1 unless entity @p[scores={playerid=1}] run scoreboard players set evilAttack Temp 9
execute if score @s evilid matches 2 unless entity @p[scores={playerid=2}] run scoreboard players set evilAttack Temp 9
execute if score @s evilid matches 3 unless entity @p[scores={playerid=3}] run scoreboard players set evilAttack Temp 9


execute if score evilAttack Temp matches 9 run scoreboard players set r Random 8
execute if score evilAttack Temp matches 9 run function glarth:util/rand_tbc
execute if score evilAttack Temp matches 9 run scoreboard players operation x Random = n Random
execute if score evilAttack Temp matches 9 if score x Random matches 1 run scoreboard players set r Random 8
execute if score evilAttack Temp matches 9 if score x Random matches 2 run scoreboard players set r Random 7
execute if score evilAttack Temp matches 9 if score x Random matches 3 run scoreboard players set r Random 3
execute if score evilAttack Temp matches 9 if score x Random matches 4 run scoreboard players set r Random 7
execute if score evilAttack Temp matches 9 if score x Random matches 5 run scoreboard players set r Random 5
execute if score evilAttack Temp matches 9 if score x Random matches 6 run scoreboard players set r Random 4
execute if score evilAttack Temp matches 9 if score x Random matches 7 run scoreboard players set r Random 1
execute if score evilAttack Temp matches 9 if score x Random matches 8 run scoreboard players set r Random 1
execute if score evilAttack Temp matches 9 run function glarth:util/rand_tbc
execute if score evilAttack Temp matches 9 run scoreboard players operation evilAttackData Temp = n Random
execute if score evilAttack Temp matches 9 run scoreboard players operation evilAttack Temp = x Random

execute unless score evilAttack Temp matches 1..8 run tellraw @a [{"text":"","color":"red"},"Error. Type: ",{"score":{"name":"evilAttack","objective":"Temp"}},", Data: ",{"score":{"name":"evilAttackData","objective":"Temp"}}]
execute if score evilAttack Temp matches 1 run scoreboard players set @s attack_221 1
execute if score evilAttack Temp matches 2 run scoreboard players set @s attack_226 1
execute if score evilAttack Temp matches 3 run scoreboard players set @s attack_223 1
execute if score evilAttack Temp matches 4 run scoreboard players set @s attack_225 1
execute if score evilAttack Temp matches 5 run scoreboard players set @s attack_224 1
execute if score evilAttack Temp matches 6 run scoreboard players set @s attack_228 1
execute if score evilAttack Temp matches 7 run scoreboard players set @s attack_222 1
execute if score evilAttack Temp matches 8 run scoreboard players set @s attack_227 1

# randomize the next attack if they get several in a row
execute if score @s evilid matches 1 run scoreboard players set @p[scores={playerid=1}] lastAttack 9
execute if score @s evilid matches 2 run scoreboard players set @p[scores={playerid=2}] lastAttack 9
execute if score @s evilid matches 3 run scoreboard players set @p[scores={playerid=3}] lastAttack 9