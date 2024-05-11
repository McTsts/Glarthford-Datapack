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
execute at @s run summon minecraft:area_effect_cloud ~ ~-0.25 ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0.0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,Effects:[{Id:1b,Amplifier:1b,Duration:1,ShowParticles:1b,ShowIcon:1b,Ambient:0b}],Tags:["utilEffectCloud"]}
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
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].Id byte 1 run scoreboard players get Id Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].Amplifier byte 1 run scoreboard players get Amplifier Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].Duration int 1 run scoreboard players get Duration Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].ShowParticles byte 1 run scoreboard players get ShowParticles Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].ShowIcon byte 1 run scoreboard players get ShowIcon Effect
execute store result entity @e[type=area_effect_cloud,tag=utilEffectCloud,limit=1] Effects[0].Ambient byte 1 run scoreboard players get Ambient Effect
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