execute at @s run summon minecraft:area_effect_cloud ~ ~-0.25 ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0.5f,RadiusPerTick:0.0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:1b,duration:1}]},Tags:["tbcNewEffect","tbcEffect"]}
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] potion_contents.custom_effects[0].id set from storage glarth:main combat.turne[0].id
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] potion_contents.custom_effects[0].amplifier set from storage glarth:main combat.turne[0].amplifier
data modify entity @e[type=area_effect_cloud,tag=tbcNewEffect,limit=1] potion_contents.custom_effects[0].duration set from storage glarth:main combat.turne[0].duration
tag @e[type=area_effect_cloud] remove tbcNewEffect
