execute at @s run summon minecraft:area_effect_cloud ~ ~-0.25 ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,Effects:[{Id:1b,Amplifier:1b,Duration:1}],Tags:["tbcNewEffect","tbcEffect"]}
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] Effects[0].Id set from storage glarth:main combat.turne[0].Id
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] Effects[0].Amplifier set from storage glarth:main combat.turne[0].Amplifier
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] Effects[0].Duration set from storage glarth:main combat.turne[0].Duration
tag @e[type=area_effect_cloud] remove tbcNewEffect
