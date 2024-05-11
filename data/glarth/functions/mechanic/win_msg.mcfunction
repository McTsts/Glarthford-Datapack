execute store result storage ntca:io in int 1 run scoreboard players get hour Dis
function ntca:call
data modify storage glarth:main time.hour set from storage ntca:io out
execute if score hour Dis matches 0..9 run data modify storage glarth:main time.hour prepend value ["±"]

execute store result storage ntca:io in int 1 run scoreboard players get minute Dis
function ntca:call
data modify storage glarth:main time.minute set from storage ntca:io out
execute if score minute Dis matches 0..9 run data modify storage glarth:main time.minute prepend value ["±"]

execute store result storage ntca:io in int 1 run scoreboard players get aHour Dis
function ntca:call
data modify storage glarth:main time.a_hour set from storage ntca:io out
execute if score aHour Dis matches 0..9 run data modify storage glarth:main time.a_hour prepend value ["±"]

execute store result storage ntca:io in int 1 run scoreboard players get aMinute Dis
function ntca:call
data modify storage glarth:main time.a_minute set from storage ntca:io out
execute if score aMinute Dis matches 0..9 run data modify storage glarth:main time.a_minute prepend value ["±"]

execute store result storage ntca:io in int 1 run scoreboard players get day Dis
function ntca:call
data modify storage glarth:main time.day set from storage ntca:io out


scoreboard players operation aSec Temp = actual Dis
scoreboard players operation aSec Temp %= 20 Const
execute store result storage ntca:io in int 1 run scoreboard players operation aSec Temp *= 5 Const
function ntca:call
data modify storage glarth:main time.a_sec set from storage ntca:io out
execute if score aSec Temp matches 0..9 run data modify storage glarth:main time.a_sec prepend value ["±"]

tellraw @a ["",{"translate":"victory","color":"green"},{"text":"\n"},{"translate":"time.ingame","color":"green","with":[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"green","bold":true},{"text":":","color":"green","bold":true},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"green","bold":true},{"nbt":"time.day","storage":"glarth:main","interpret":true,"color":"green","bold":true}]},{"text":"\n"},{"translate":"time.actual","color":"green","with":[{"nbt":"time.a_hour","storage":"glarth:main","interpret":true,"color":"green","bold":true},{"text":":","color":"green","bold":true},{"nbt":"time.a_minute","storage":"glarth:main","interpret":true,"color":"green","bold":true},{"nbt":"time.a_sec","storage":"glarth:main","interpret":true,"color":"green","bold":true}]},{"text":"\n"},{"translate":"stories","color":"green"}]

