# Add up all speed manipulating values
scoreboard players operation speed Temp = @s tbcSpeed
scoreboard players operation speed Temp += @s tbcSpeedXX
scoreboard players operation speed Temp += @s tbcSpeedX

# Num to Char Array (2 decimals); 12.5 makes default speed (8) into 100 which is 1 with 2 decimals
execute store result storage ntca:io in int 12.5 run scoreboard players get speed Temp
function ntcadec2:call

# Normal Speed Message (-> any speed)
execute unless score speed Temp matches 8 unless score speed Temp matches 16 run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[gamemode=adventure]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.speed.all","color":"gray","with":[[{"nbt":"EnderItems[{Slot:1b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}],[{"text":"x"},{"nbt":"out","storage":"ntca:io","interpret":true}]]}]


# Custom Speed Messages (-> 8 | 16)
execute if score speed Temp matches 8 run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[gamemode=adventure]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.speed.default","color":"gray","with":[[{"nbt":"EnderItems[{Slot:1b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}],[{"text":"x"},{"nbt":"out","storage":"ntca:io","interpret":true}]]}]
execute if score speed Temp matches 16 run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[gamemode=adventure]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.speed.double","color":"gray","with":[[{"nbt":"EnderItems[{Slot:1b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}],[{"text":"x"},{"nbt":"out","storage":"ntca:io","interpret":true}]]}]
