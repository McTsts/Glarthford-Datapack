execute unless entity @e[tag=frog8,type=armor_stand] run summon minecraft:area_effect_cloud -23 25 -157 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter8"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog8,type=armor_stand] run summon minecraft:area_effect_cloud -24 25 -156 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter8"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog8,type=armor_stand] run summon minecraft:area_effect_cloud -19 25 -152 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter8"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog8,type=armor_stand] run kill @e[tag=frogEnter8,sort=random,type=area_effect_cloud,limit=2]
execute unless entity @e[tag=frog8,type=armor_stand] run summon minecraft:armor_stand -21 26 -156 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}],Tags:["frog","frog8","frogFlee"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Rotation:[40.0f,0.0f]}