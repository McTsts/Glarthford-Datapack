# Get Values
execute store result score eId Temp run data get storage glarth:main combat.turne[0].Id
execute store result score eAmplifier Temp run data get storage glarth:main combat.turne[0].Amplifier
execute store result score eDuration Temp run data get storage glarth:main combat.turne[0].Duration


# Apply Effect
execute if score eDuration Temp matches 1.. if score eId Temp matches 1..20 if score eAmplifier Temp matches 0.. run function glarth:combat/peffect/apply_effect
execute if score eDuration Temp matches 1.. if score eId Temp matches 1..20 if score eAmplifier Temp matches 0.. run function glarth:combat/peffect/apply_forever

# Check Duration
scoreboard players remove eDuration Temp 300
execute store result storage glarth:main combat.turne[0].Duration int 1 run scoreboard players get eDuration Temp
function glarth:combat/peffect/tick


# Continue
data remove storage glarth:main combat.turne[0]
execute if data storage glarth:main combat.turne[0] run function glarth:combat/peffect/get