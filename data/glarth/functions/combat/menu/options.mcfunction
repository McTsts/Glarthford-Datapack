# Flee
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:0}] run function glarth:combat/flee

# Skip
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] if score @s charType matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] if score @s charType matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.b"}]
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] if score @s charType matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.c"}]
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] run scoreboard players set @s lastAttack 7
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] run function glarth:combat/done

# Armor
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:2}] at @s run function glarth:combat/menu/options/armor

# Passive
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:3}] at @s run function glarth:combat/menu/options/passive

# Companion
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:4}] at @s if entity @e[tag=phanterra] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.none","color":"gray"}]
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:4}] at @s unless entity @e[tag=phanterra] run function glarth:combat/menu/options/companion

# Speed
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:5}] at @s run function glarth:combat/menu/options/speed

# Elemental Type
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:6}] at @s run function glarth:combat/menu/options/elemental

# Elemental Type
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] at @s run function glarth:combat/menu/options/effects


# Return
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set @s tbcMenuX 0

