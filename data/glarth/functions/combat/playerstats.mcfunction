# Make sure values are in bounds
scoreboard players operation @s tbcHealth < 20 Const
scoreboard players operation @s tbcStamina < 20 Const
scoreboard players operation @s tbcHealth > 0 Const
scoreboard players operation @s tbcStamina > 0 Const

# Get Health / Absorption Values
execute store result score @s tbcAbsorptionXX run data get entity @s AbsorptionAmount
scoreboard players operation @s tbcHealthOnly = @s tbcHealthActual
scoreboard players operation @s tbcHealthOnly -= @s tbcAbsorptionXX

## Set Health
# Calculate Difference
scoreboard players operation @s tbcHealthX = @s tbcHealth
scoreboard players operation @s tbcHealthX -= @s tbcHealthOnly
# Damage
execute if score @s tbcHealthX matches ..-1 run function glarth:combat/playerstats_damage
# Heal 
execute if score @s tbcHealthX matches 1.. if score @s tbcHealth matches 20 run effect give @s minecraft:instant_health 1 120 true
execute if score @s tbcHealthX matches 1.. if score @s tbcHealth matches ..19 run function glarth:combat/playerstats_heal

# Set Stamina
execute if score @s tbcStaminaActual > @s tbcStamina run effect give @s[scores={tbcStamina=..19}] minecraft:hunger 1 30 true
execute if score @s tbcStaminaActual > @s tbcStamina run effect give @s[scores={tbcStamina=20..}] minecraft:hunger 1 120 true
execute if score @s tbcStaminaActual < @s tbcStamina run effect give @s minecraft:saturation 1 0 true

# Check if Absorption should be applied
execute if score @s tbcHealth = @s tbcHealthOnly run tag @s add tbcApplyAbsorption

# Apply / Remove Absorption
execute if score @s tbcAbsorption matches 0 unless score @s tbcAbsorptionX matches 0 run effect clear @s minecraft:absorption 
execute if score @s tbcAbsorption matches 0 unless score @s tbcAbsorptionX matches 0 run scoreboard players set @s tbcAbsorptionX 0
execute if entity @s[tag=tbcApplyAbsorption] run function glarth:combat/playerstats_absorption