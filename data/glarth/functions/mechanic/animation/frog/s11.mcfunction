execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:area_effect_cloud -56 25 -142 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter11"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:area_effect_cloud -57 25 -144 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter11"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:area_effect_cloud -57 25 -146 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter11"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:area_effect_cloud -56 25 -148 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter11"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:area_effect_cloud -55 25 -149 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter11"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog11,type=armor_stand] run kill @e[tag=frogEnter11,sort=random,type=area_effect_cloud,limit=4]
execute unless entity @e[tag=frog11,type=armor_stand] run summon minecraft:armor_stand -55 26 -145 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}],Tags:["frog","frog11","frogFlee"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Rotation:[100.0f,0.0f]}