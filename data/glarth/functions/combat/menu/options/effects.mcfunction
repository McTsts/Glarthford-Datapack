scoreboard players set effectsDone Temp 0
tellraw @a[distance=..0.5] ""

execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[2]

## Positive
# Speed I
scoreboard players operation ef Temp = @s tbcEfJump
execute store result storage ntca:io in int 1 run scoreboard players operation ef Temp += @s tbcEfJ2
function ntca:call
execute if data storage glarth:main combat.turne[{Id:8b}] run data modify storage ntca:io out append value ["+"]
execute if score ef Temp matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.speed_boost2"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"green"}]}]
execute if score ef Temp matches 1.. run scoreboard players add effectsDone Temp 1

# Speed II
scoreboard players operation ef Temp = @s tbcEfSpeed
execute store result storage ntca:io in int 1 run scoreboard players operation ef Temp += @s tbcEfS2
function ntca:call
execute if data storage glarth:main combat.turne[{Id:1b}] run data modify storage ntca:io out append value ["+"]
execute if score ef Temp matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[[{"translate":"tbc.attack.msg.name.speed_boost2"}, " II"],{"nbt":"out","storage":"ntca:io","interpret":true,"color":"green"}]}]
execute if score ef Temp matches 1.. run scoreboard players add effectsDone Temp 1

# Fire Resistance
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcFireResis
function ntca:call
execute if data storage glarth:main combat.turne[{Id:12b}] run data modify storage ntca:io out append value ["+"]
execute if score @s tbcFireResis matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.fire_resistance"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"green"}]}]
execute if score @s tbcFireResis matches 1.. run scoreboard players add effectsDone Temp 1

# Regeneration
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcRegeneration
function ntca:call
execute if score @s tbcRegeneration matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.regeneration"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"green"}]}]
execute if score @s tbcRegeneration matches 1.. run scoreboard players add effectsDone Temp 1

## Negative
# Fire
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcFire
function ntca:call
execute if score @s tbcFire matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.fire2"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcFire matches 1.. run scoreboard players add effectsDone Temp 1

# Poison
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcPoison
function ntca:call
execute if score @s tbcPoison matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.poison"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcPoison matches 1.. run scoreboard players add effectsDone Temp 1

# Wither
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcWither
function ntca:call
execute if score @s tbcWither matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.wither"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcWither matches 1.. run scoreboard players add effectsDone Temp 1

# Infection
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcInfection
function ntca:call
execute if score @s tbcInfection matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.infection"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcInfection matches 1.. run scoreboard players add effectsDone Temp 1

# Blindness
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcBlindness
function ntca:call
execute if score @s tbcBlindness matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.blindness2"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcBlindness matches 1.. run scoreboard players add effectsDone Temp 1

# Pumpkin
scoreboard players remove @s tbcPumpkin 1
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcPumpkin
scoreboard players add @s tbcPumpkin 1
function ntca:call
execute if score @s tbcPumpkin matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.pumpkin"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcPumpkin matches 1.. run scoreboard players add effectsDone Temp 1

# Can't Move
scoreboard players remove @s tbcCantMove 1
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcCantMove
scoreboard players add @s tbcCantMove 1
function ntca:call
execute if score @s tbcCantMove matches 1.. run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects","italic":true,"color":"gray","with":[{"translate":"tbc.attack.msg.name.cant_move"},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score @s tbcCantMove matches 1.. run scoreboard players add effectsDone Temp 1

# None
execute if score effectsDone Temp matches ..0 run tellraw @a[distance=..0.5] ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.effects.none","color":"gray"}]