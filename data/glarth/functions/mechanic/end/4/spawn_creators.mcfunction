time set 6000
kill @e[tag=creditsText]

kill @e[tag=mctsts]
summon armor_stand 7 26 -200 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":1}}],Tags:["end_scene","mctsts","endChar"],Rotation:[180.0f,0.0f],CustomName:'{"text":"McTsts","color":"green"}',CustomNameVisible:1}
execute at @e[tag=mctsts] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"green","font":"custom:tiny","with":[{"translate":"mctsts"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=mctsts] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.1","color":"green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=mctsts] run summon area_effect_cloud ~ ~1.10 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.2","color":"green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=mctsts] run summon area_effect_cloud ~ ~0.92 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.3","color":"green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=mctsts] run summon area_effect_cloud ~ ~0.74 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.4","color":"green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=adri]
summon armor_stand 56 30 -280 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":256}}],Tags:["end_scene","adri","endChar"],Rotation:[35.0f,0.0f],CustomName:'{"text":"Asometric","color":"red"}',CustomNameVisible:1}
execute at @e[tag=adri] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"red","font":"custom:tiny","with":[{"translate":"adri"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=adri] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.5","color":"red","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=adri] run summon area_effect_cloud ~ ~1.10 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.4","color":"red","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=adri] run summon area_effect_cloud ~ ~0.92 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.6","color":"red","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=gibbs]
summon armor_stand 30 27 -137 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":348}}],Tags:["end_scene","gibbs"],Rotation:[40.0f,0.0f],CustomName:'{"text":"gibbsly","color":"gray"}',CustomNameVisible:1}
execute at @e[tag=gibbs] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"gray","font":"custom:tiny","with":[{"translate":"gibbs"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=gibbs] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.7","color":"gray","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=gibbs] run summon area_effect_cloud ~ ~1.10 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.6","color":"gray","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=federick]
kill @e[tag=summoner]
summon armor_stand -44 28 -265 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":353}}],Tags:["end_scene","federick","endChar"],Rotation:[35.0f,0.0f],CustomName:'{"text":"federick9±","color":"red"}',CustomNameVisible:1}
execute at @e[tag=federick] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"red","font":"custom:tiny","with":[{"translate":"federick"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=federick] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.7","color":"red","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
summon armor_stand -42 28 -262 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":163}}],Tags:["end_scene","summoner","endChar"],Rotation:[55.0f,0.0f],CustomName:'{"text":"BartTheBart","color":"dark_green"}',CustomNameVisible:1}
execute at @e[tag=summoner] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"dark_green","font":"custom:tiny","with":[{"translate":"summoner"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=summoner] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.8","color":"dark_green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=summoner] run summon area_effect_cloud ~ ~1.10 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.6","color":"dark_green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=ds]
kill @e[tag=ttextt]
summon armor_stand 10 28 -271 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":67,"minecraft:unbreakable":{}}}],Rotation:[-45.0f,0.0f],CustomName:'{"text":"Ds43m","color":"yellow"}',CustomNameVisible:1,NoGravity:1,Tags:["end_scene","ds","endChar"]}
execute at @e[tag=ds] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"yellow","font":"custom:tiny","with":[{"translate":"bentechy"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=ds] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.9","color":"yellow","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
summon armor_stand 9 26 -269 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":69,"minecraft:unbreakable":{}}}],Tags:["end_scene","ttextt","endChar"],Rotation:[-90.0f,0.0f],CustomName:'{"text":"TTEXTT","color":"dark_red"}',CustomNameVisible:1}
execute at @e[tag=ttextt] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"dark_red","font":"custom:tiny","with":[{"translate":"ttextt"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=ttextt] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.10","color":"dark_red","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=marhjo]
kill @e[tag=mrk]
kill @e[tag=enderpig]
summon armor_stand 31.0 27 -171.0 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":55}}],Tags:["end_scene","marhjo","endChar"],Rotation:[110.0f,0.0f],CustomName:'{"text":"marhjo","color":"dark_green"}',CustomNameVisible:1}
execute at @e[tag=marhjo] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"dark_green","font":"custom:tiny","with":[{"translate":"marhjo"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=marhjo] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.4","color":"dark_green","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
summon armor_stand 27 26 -172 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":63}}],Tags:["end_scene","mrk","endChar"],Rotation:[140.0f,0.0f],CustomName:'{"text":"MrKukurykpl","color":"blue"}',CustomNameVisible:1}
execute at @e[tag=mrk] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"blue","font":"custom:tiny","with":[{"translate":"mrk"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=mrk] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.11","color":"blue","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
summon armor_stand 28 26 -176 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":2}}],Tags:["end_scene","enderpig","endChar"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"EnderPig","color":"dark_purple"}',CustomNameVisible:1}
execute at @e[tag=enderpig] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"dark_purple","font":"custom:tiny","with":[{"translate":"enderpig"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=enderpig] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.4","color":"dark_purple","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}

kill @e[tag=jerozgen]
kill @e[tag=suso]
summon armor_stand -83 41 -245 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":525}}],Tags:["end_scene","jerozgen","endChar"],Rotation:[95.0f,0.0f],CustomName:'{"text":"Jerozgen","color":"gold"}',CustomNameVisible:1}
execute at @e[tag=jerozgen] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"gold","font":"custom:tiny","with":[{"translate":"jerozgen"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=jerozgen] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.11","color":"gold","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}
summon armor_stand -82 41 -242 {Invisible:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":360}}],Tags:["end_scene","suso","endChar"],Rotation:[120.0f,0.0f],CustomName:'{"text":"Suso","color":"blue"}',CustomNameVisible:1}
execute at @e[tag=suso] run summon area_effect_cloud ~ ~1.70 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.aka","color":"blue","font":"custom:tiny","with":[{"translate":"suso"}]}',CustomNameVisible:1,Tags:["creditsText"]}
execute at @e[tag=suso] run summon area_effect_cloud ~ ~1.28 ~ {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.scene.11","color":"blue","font":"custom:small"}',CustomNameVisible:1,Tags:["creditsText"]}