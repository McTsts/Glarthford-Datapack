# Setup
data remove block 84 26 -121 Items
item replace block 84 26 -121 container.0 with paper

# Health
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcHealth
function ntca:call
execute unless data storage ntca:io out[1] run data modify storage ntca:io out prepend value "±"
data modify block 84 26 -121 Items[{Slot:0b}].components.minecraft:custom_data.tbcHealth set from storage ntca:io out

# Absorption
execute if score @s tbcAbsorption matches 1.. run function glarth:combat/actionbar_absorption

# Stamina
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcStamina
function ntca:call
execute unless data storage ntca:io out[1] run data modify storage ntca:io out prepend value "±"
data modify block 84 26 -121 Items[{Slot:0b}].components.minecraft:custom_data.tbcStamina set from storage ntca:io out

loot replace entity @s enderchest.3 mine 84 26 -121

# Actionbar
execute unless score @s tbcAbsorption matches 1.. run title @s actionbar ["",{"translate":"tbc.actionbar.default","with":[{"nbt":"EnderItems[{Slot:3b}].components.minecraft:custom_data.tbcHealth","entity":"@s","interpret":true,"color":"red"},"",{"text":"2±","color":"red"},{"nbt":"EnderItems[{Slot:3b}].components.minecraft:custom_data.tbcStamina","entity":"@s","interpret":true,"color":"red"},"",{"text":"2±","color":"red"}]}]
execute if score @s tbcAbsorption matches 1.. run title @s actionbar ["",{"translate":"tbc.actionbar.default","with":[{"nbt":"EnderItems[{Slot:3b}].components.minecraft:custom_data.tbcHealth","entity":"@s","interpret":true,"color":"red"},"",[{"text":"2±","color":"red"},{"text":" + ","color":"gold"},{"nbt":"EnderItems[{Slot:3b}].components.minecraft:custom_data.tbcAbsorption","entity":"@s","interpret":true,"color":"gold"}],{"nbt":"EnderItems[{Slot:3b}].components.minecraft:custom_data.tbcStamina","entity":"@s","interpret":true,"color":"red"},"",{"text":"2±","color":"red"}]}]

# Spectators
scoreboard players operation health= glarth.spec_vals = @s tbcHealth
scoreboard players operation stamina= glarth.spec_vals = @s tbcStamina
scoreboard players operation absorption= glarth.spec_vals = @s tbcAbsorption
execute at @s as @a[gamemode=spectator,distance=..1] run function glarth.spec_vals:display