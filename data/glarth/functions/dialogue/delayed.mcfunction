# Calc
scoreboard players set 24 Const 24
scoreboard players set 60 Const 60
scoreboard players operation minute Temp %= 60 Const
execute if score minute Temp < minute Dis run scoreboard players add hour Temp 1
scoreboard players operation hour Temp %= 24 Const

# Minute
execute store result storage ntca:io in int 1 run scoreboard players get minute Dis
function ntca:call
data modify storage glarth:main time.minute set from storage ntca:io out
execute if score minute Dis matches ..9 run data modify storage glarth:main time.minute prepend value ["±"]

# Temp Minute
execute store result storage ntca:io in int 1 run scoreboard players get minute Temp
function ntca:call
data modify storage glarth:main time.tminute set from storage ntca:io out
execute if score minute Temp matches ..9 run data modify storage glarth:main time.tminute prepend value ["±"]

# Hour
execute store result storage ntca:io in int 1 run scoreboard players get hour Dis
function ntca:call
data modify storage glarth:main time.hour set from storage ntca:io out

# Temp Hour
execute store result storage ntca:io in int 1 run scoreboard players get hour Temp
function ntca:call
data modify storage glarth:main time.thour set from storage ntca:io out