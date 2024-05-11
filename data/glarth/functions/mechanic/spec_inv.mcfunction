function glarth:inventory/save

execute as @a[gamemode=spectator,distance=..1,tag=!DEV] run function glarth:inventory/load
execute as @a[gamemode=spectator,distance=..1,tag=!DEV] unless score @s specTime matches 1.. run scoreboard players set @s specTime 100
execute as @a[gamemode=spectator,distance=..1,tag=!DEV] run scoreboard players remove @s specTime 1
title @a[gamemode=spectator,distance=..1,scores={MusicTimeR=60..,specTime=96..}] actionbar {"translate":"spectator_inv.start","italic":true,"with":[{"keybind":"key.inventory","bold":true,"italic":false},{"selector":"@s"}]}


# Spectators
execute store result score health= glarth.spec_vals run data get entity @s Health
execute store result score stamina= glarth.spec_vals run data get entity @s foodLevel
execute store result score absorption= glarth.spec_vals run data get entity @s AbsorptionAmount
execute if data entity @s RootVehicle run scoreboard players set stamina= glarth.spec_vals -1
execute at @s as @a[gamemode=spectator,distance=..1,tag=!DEV,scores={MusicTimeR=60..,specTime=..95}] run function glarth.spec_vals:display

# Effects
execute unless data entity @s ActiveEffects[{Id:1}] run effect clear @a[gamemode=spectator,distance=..1,tag=!DEV] speed
execute if data entity @s ActiveEffects[{Id:1}] run effect give @a[gamemode=spectator,distance=..1,tag=!DEV] speed 3 0 true
execute unless data entity @s ActiveEffects[{Id:8}] run effect clear @a[gamemode=spectator,distance=..1,tag=!DEV] jump_boost
execute if data entity @s ActiveEffects[{Id:8}] run effect give @a[gamemode=spectator,distance=..1,tag=!DEV] jump_boost 3 0 true
execute unless data entity @s ActiveEffects[{Id:9}] run effect clear @a[gamemode=spectator,distance=..1,tag=!DEV] nausea
execute if data entity @s ActiveEffects[{Id:9}] as @a[gamemode=spectator,distance=..1,tag=!DEV] unless data entity @s ActiveEffects[{Id:9}] run effect give @s nausea 15 0 true
execute unless data entity @s ActiveEffects[{Id:12}] run effect clear @a[gamemode=spectator,distance=..1,tag=!DEV] fire_resistance
execute if data entity @s ActiveEffects[{Id:12}] run effect give @a[gamemode=spectator,distance=..1,tag=!DEV] fire_resistance 3 0 true