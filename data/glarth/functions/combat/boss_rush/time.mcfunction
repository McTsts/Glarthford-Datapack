scoreboard players operation aHour Dis = bossRushTime Stats
scoreboard players operation aHour Dis /= 1200 Const
execute store result storage ntca:io in int 1 run scoreboard players get aHour Dis
function ntca:call
data modify storage glarth:main time.a_hour set from storage ntca:io out
execute if score aHour Dis matches 0..9 run data modify storage glarth:main time.a_hour prepend value ["±"]

scoreboard players operation aMinute Dis = bossRushTime Stats
scoreboard players operation aMinute Dis %= 1200 Const
scoreboard players operation aMinute Dis /= 20 Const
execute store result storage ntca:io in int 1 run scoreboard players get aMinute Dis
function ntca:call
data modify storage glarth:main time.a_minute set from storage ntca:io out
execute if score aMinute Dis matches 0..9 run data modify storage glarth:main time.a_minute prepend value ["±"]


scoreboard players operation aSec Temp = bossRushTime Stats
scoreboard players operation aSec Temp %= 20 Const
execute store result storage ntca:io in int 1 run scoreboard players operation aSec Temp *= 5 Const
function ntca:call
data modify storage glarth:main time.a_sec set from storage ntca:io out
execute if score aSec Temp matches 0..9 run data modify storage glarth:main time.a_sec prepend value ["±"]

tellraw @a [{"translate":"time.actual","color":"red","with":[{"nbt":"time.a_hour","storage":"glarth:main","interpret":true,"color":"red","bold":true},{"text":":","color":"red","bold":true},{"nbt":"time.a_minute","storage":"glarth:main","interpret":true,"color":"red","bold":true},{"nbt":"time.a_sec","storage":"glarth:main","interpret":true,"color":"red","bold":true}]}]
