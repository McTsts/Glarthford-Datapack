execute unless entity @e[tag=frog13,type=armor_stand] run summon minecraft:area_effect_cloud -54 25 -161 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter13"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog13,type=armor_stand] run summon minecraft:area_effect_cloud -56 25 -159 {Radius:0.0f,Duration:2147483647,Tags:["frogEnter","frogEnter13"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute unless entity @e[tag=frog13,type=armor_stand] run kill @e[tag=frogEnter13,sort=random,type=area_effect_cloud,limit=1]
execute unless entity @e[tag=frog13,type=armor_stand] run summon minecraft:armor_stand -57 26 -161 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}],Tags:["frog","frog13","frogFlee"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Rotation:[-30.0f,0.0f]}