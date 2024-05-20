##
## Applies effects without limitations from /effect
##
## Setup
## /scoreboard objectives add Effect dummy
## /scoreboard objectives add Const dummy
## /scoreboard objectives set 10 Const 10
## /scoreboard objectives set 100 Const 100
##
# Summon AEC
execute at @s run summon minecraft:area_effect_cloud ~ ~-0.25 ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0.0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:1b,duration:1,show_particles:1b,show_icon:1b,ambient:0b}]},Tags:["utilEffectCloud"]}
# Show Particles | Show Icon | Ambient
scoreboard players operation ShowParticles Effect = SP_SI_A Effect
scoreboard players operation ShowParticles Effect /= 100 Const
scoreboard players operation ShowIcon Effect = SP_SI_A Effect
scoreboard players operation ShowIcon Effect %= 100 Const
scoreboard players operation ShowIcon Effect /= 10 Const
scoreboard players operation Ambient Effect = SP_SI_A Effect
scoreboard players operation Ambient Effect %= 10 Const
# Check Values
execute unless score Id Effect matches 1..32 run scoreboard players set Id Effect 1
execute unless score Duration Effect matches 1..1000000 run scoreboard players set Duration Effect 600
execute unless score Amplifier Effect matches 0..255 run scoreboard players set Amplifier Effect 0
execute unless score ShowParticles Effect matches 0..1 run scoreboard players set ShowParticles Effect 1
execute unless score ShowIcon Effect matches 0..1 run scoreboard players set ShowIcon Effect 1
execute unless score Ambient Effect matches 0..1 run scoreboard players set Ambient Effect 0
# Store Values
execute if score Id Effect matches 1 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:speed"
execute if score Id Effect matches 2 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:slowness"
execute if score Id Effect matches 3 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:haste"
execute if score Id Effect matches 4 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:mining_fatigue"
execute if score Id Effect matches 5 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:strength"
execute if score Id Effect matches 6 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:instant_health"
execute if score Id Effect matches 7 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:instant_damage"
execute if score Id Effect matches 8 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:jump_boost"
execute if score Id Effect matches 9 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:nausea"
execute if score Id Effect matches 10 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:regeneration"
execute if score Id Effect matches 11 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:resistance"
execute if score Id Effect matches 12 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:fire_resistance"
execute if score Id Effect matches 13 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:water_breathing"
execute if score Id Effect matches 14 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:invisibility"
execute if score Id Effect matches 15 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:blindness"
execute if score Id Effect matches 16 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:night_vision"
execute if score Id Effect matches 17 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:hunger"
execute if score Id Effect matches 18 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:weakness"
execute if score Id Effect matches 19 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:poison"
execute if score Id Effect matches 20 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:wither"
execute if score Id Effect matches 21 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:health_boost"
execute if score Id Effect matches 22 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:absorption"
execute if score Id Effect matches 23 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:saturation"
execute if score Id Effect matches 24 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:glowing"
execute if score Id Effect matches 25 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:levitation"
execute if score Id Effect matches 26 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:luck"
execute if score Id Effect matches 27 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:unluck"
execute if score Id Effect matches 28 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:slow_falling"
execute if score Id Effect matches 29 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:conduit_power"
execute if score Id Effect matches 30 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:dolphins_grace"
execute if score Id Effect matches 31 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:bad_omen"
execute if score Id Effect matches 32 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:hero_of_the_villager"
execute if score Id Effect matches 33 run data modify entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].id set value "minecraft:darkness"
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].amplifier byte 1 run scoreboard players get Amplifier Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].duration int 1 run scoreboard players get Duration Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].show_particles byte 1 run scoreboard players get ShowParticles Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].show_icon byte 1 run scoreboard players get ShowIcon Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] potion_contents.custom_effects[0].ambient byte 1 run scoreboard players get Ambient Effect
# Reset
tag @e[type=area_effect_cloud] remove utilEffectCloud

##
## Example Usage
##
## /scoreboard players set Id Effect 5
## /scoreboard players set Amplifier Effect 2
## /scoreboard players set Duration Effect 600
## /scoreboard players set SP_SI_A Effect 010
## Id = 5 = Strength
## Amplifier = 2 = Strength III
## Duration = 600t = 30s = Strength III for 30 seconds
## SP_SI_A = 010; SP = 0, SI = 1, A = 0; ShowParticles = 0, ShowIcon = 1, Ambient = 0
##
## Gives Strength III for 30 seconds without particles, but shows the icon
##
## SP_SI_A is a list of 3 booleans for: Show Particles (SP), ShowIcon (SI) and Ambient (A) 
##
## ShowParticles: Removes particles if set to 0
## ShowIcon: Shows the Icon in the top right corner of the screen independent of the other values
## Ambient: Makes the icon be surrounded by a blue border and if ShowParticles is enabled shows the particles but they are barely visible
##
## If the effect isn't applied because players move to quickly, try increasing Radius in the summon command
##