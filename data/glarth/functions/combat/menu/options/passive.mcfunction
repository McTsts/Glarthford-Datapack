scoreboard players set passiveDone Temp 0
tellraw @a[distance=..0.5] ""

# TOU
function glarth:combat/remove/set
execute store result score count Temp if data storage glarth:main inv.all[{id:"minecraft:totem_of_undying"}]
execute if score count Temp matches 1.. run scoreboard players set passiveDone Temp 1
execute if score count Temp matches 1.. store result storage ntca:io in int 1 run scoreboard players get count Temp
execute if score count Temp matches 1.. run function ntca:call
execute if score count Temp matches 1.. run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.passive","italic":true,"color":"gray","with":[{"translate":"tbc.attack.passive.totem","italic":false},{"nbt":"out","storage":"ntca:io","interpret":true}]}]

# Shield
function glarth:combat/remove/set
data modify storage glarth:main invget.in set value {id:"minecraft:shield"}
function glarth:inventory/get
execute store result score count Temp run data get storage glarth:main invget.out.Count
execute if score count Temp matches 1.. run scoreboard players set passiveDone Temp 1
execute if score count Temp matches 1.. store result score damage Temp run data get storage glarth:main invget.out.tag.Damage
execute if score count Temp matches 1.. store result storage ntca:io in int 1 run scoreboard players get damage Temp
execute if score count Temp matches 1.. run function ntca:call
execute if score count Temp matches 1.. run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.passive2","italic":true,"color":"gray","with":[{"translate":"tbc.attack.passive.shield","italic":false},{"nbt":"out","storage":"ntca:io","interpret":true}]}]

# Fire Amulet
function glarth:combat/remove/set
execute if data storage glarth:main inv.all[{id:"minecraft:golden_horse_armor"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.attack.passive.fire_amulet","italic":false,"color":"gray"}]
execute if data storage glarth:main inv.all[{id:"minecraft:golden_horse_armor"}] run scoreboard players set passiveDone Temp 1

# Poison Amulet
function glarth:combat/remove/set
execute if data storage glarth:main inv.all[{id:"minecraft:iron_horse_armor"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.attack.passive.poison_amulet","italic":false,"color":"gray"}]
execute if data storage glarth:main inv.all[{id:"minecraft:iron_horse_armor"}] run scoreboard players set passiveDone Temp 1

# None
execute if score passiveDone Temp matches ..0 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.passive.none","color":"gray"}]