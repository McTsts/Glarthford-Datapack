# Get Values
data modify storage glarth:main temp set from storage glarth:main combat.turne[0].id
execute if data storage glarth:main temp{id:"minecraft:speed"} run scoreboard players set eId Temp 1
execute if data storage glarth:main temp{id:"minecraft:slowness"} run scoreboard players set eId Temp 2
execute if data storage glarth:main temp{id:"minecraft:haste"} run scoreboard players set eId Temp 3
execute if data storage glarth:main temp{id:"minecraft:mining_fatigue"} run scoreboard players set eId Temp 4
execute if data storage glarth:main temp{id:"minecraft:strength"} run scoreboard players set eId Temp 5
execute if data storage glarth:main temp{id:"minecraft:instant_health"} run scoreboard players set eId Temp 6
execute if data storage glarth:main temp{id:"minecraft:instant_damage"} run scoreboard players set eId Temp 7
execute if data storage glarth:main temp{id:"minecraft:jump_boost"} run scoreboard players set eId Temp 8
execute if data storage glarth:main temp{id:"minecraft:nausea"} run scoreboard players set eId Temp 9
execute if data storage glarth:main temp{id:"minecraft:regeneration"} run scoreboard players set eId Temp 10
execute if data storage glarth:main temp{id:"minecraft:resistance"} run scoreboard players set eId Temp 11
execute if data storage glarth:main temp{id:"minecraft:fire_resistance"} run scoreboard players set eId Temp 12
execute if data storage glarth:main temp{id:"minecraft:water_breathing"} run scoreboard players set eId Temp 13
execute if data storage glarth:main temp{id:"minecraft:invisibility"} run scoreboard players set eId Temp 14
execute if data storage glarth:main temp{id:"minecraft:blindness"} run scoreboard players set eId Temp 15
execute if data storage glarth:main temp{id:"minecraft:night_vision"} run scoreboard players set eId Temp 16
execute if data storage glarth:main temp{id:"minecraft:hunger"} run scoreboard players set eId Temp 17
execute if data storage glarth:main temp{id:"minecraft:weakness"} run scoreboard players set eId Temp 18
execute if data storage glarth:main temp{id:"minecraft:poison"} run scoreboard players set eId Temp 19
execute if data storage glarth:main temp{id:"minecraft:wither"} run scoreboard players set eId Temp 20
execute if data storage glarth:main temp{id:"minecraft:health_boost"} run scoreboard players set eId Temp 21
execute if data storage glarth:main temp{id:"minecraft:absorption"} run scoreboard players set eId Temp 22
execute if data storage glarth:main temp{id:"minecraft:saturation"} run scoreboard players set eId Temp 23
execute if data storage glarth:main temp{id:"minecraft:glowing"} run scoreboard players set eId Temp 24
execute if data storage glarth:main temp{id:"minecraft:levitation"} run scoreboard players set eId Temp 25
execute if data storage glarth:main temp{id:"minecraft:luck"} run scoreboard players set eId Temp 26
execute if data storage glarth:main temp{id:"minecraft:unluck"} run scoreboard players set eId Temp 27
execute if data storage glarth:main temp{id:"minecraft:slow_falling"} run scoreboard players set eId Temp 28
execute if data storage glarth:main temp{id:"minecraft:conduit_power"} run scoreboard players set eId Temp 29
execute if data storage glarth:main temp{id:"minecraft:dolphins_grace"} run scoreboard players set eId Temp 30
execute if data storage glarth:main temp{id:"minecraft:bad_omen"} run scoreboard players set eId Temp 31
execute if data storage glarth:main temp{id:"minecraft:hero_of_the_villager"} run scoreboard players set eId Temp 32
execute if data storage glarth:main temp{id:"minecraft:darkness"} run scoreboard players set eId Temp 33
execute store result score eAmplifier Temp run data get storage glarth:main combat.turne[0].amplifier
execute store result score eDuration Temp run data get storage glarth:main combat.turne[0].duration


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