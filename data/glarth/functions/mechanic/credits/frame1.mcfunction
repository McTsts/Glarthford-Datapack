kill @e[tag=creditsText1]
summon area_effect_cloud 7 37 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.title","color":"gold","font":"custom:huge"}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 36.7 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.main.1","color":"gold","with":[{"text":"McTsts","color":"green"}]}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 36.4 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.main.2","color":"gold","with":[{"text":"Crowdford","color":"gray"}]}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 36.1 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.main.3","color":"gold","font":"custom:small","with":[{"text":"Glarthford"},{"text":"McTsts","color":"green"},{"text":"Mirage Maps","color":"yellow"}]}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 35 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"translate":"credits.category.1","color":"gold","font":"custom:big"}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 34.7 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"text":"McTsts","color":"green"}',CustomNameVisible:1,Tags:["creditsText1"]}
summon area_effect_cloud 7 34.4 -200 {Radius:0.0f,Duration:2147483647,CustomName:'{"text":"Asometric","color":"red"}',CustomNameVisible:1,Tags:["creditsText1"]}

# remove possible cutscene obstructions
kill @e[type=horse]
kill @e[type=wolf]
kill @e[type=pig]
kill @e[type=rabbit]
kill @e[type=cow]
kill @e[type=chicken]