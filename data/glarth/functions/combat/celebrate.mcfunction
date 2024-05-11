scoreboard players set r Random 5
function glarth:util/randomish
execute unless score start tbcStats matches 3.. run scoreboard players set n Random 0

tag @e[tag=tbcMarkerEnemy] add tbcMarkerAllCel 
tag @e[tag=tbcMarkerMiddle] add tbcMarkerAllCel 
tag @e[tag=tbcMarkerMiddleB] add tbcMarkerAllCel 
execute as @e[tag=tbcMarkerAllCel] at @s unless block ~ ~ ~ #glarth:not_solid run tag @s remove tbcMarkerAllCel
execute as @e[tag=tbcMarkerAllCel] at @s unless block ~ ~1 ~ #glarth:not_solid run tag @s remove tbcMarkerAllCel
execute as @e[tag=tbcMarkerAllCel] at @s unless block ~ ~2 ~ #glarth:not_solid run tag @s remove tbcMarkerAllCel
execute as @e[tag=tbcMarkerAllCel] at @s unless block ~ ~3 ~ #glarth:not_solid run tag @s remove tbcMarkerAllCel
execute as @e[tag=tbcMarkerAllCel] at @s unless block ~ ~4 ~ #glarth:not_solid run tag @s remove tbcMarkerAllCel
execute if score n Random matches 1 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
execute if score n Random matches 2 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;4390848]}]}}}}
execute if score n Random matches 3 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;7055103]}]}}}}
execute if score n Random matches 4 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16748543]}]}}}}
execute if score n Random matches 5 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;16774842]}]}}}}
execute if score n Random matches 6 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"creeper",colors:[I;10721791]}]}}}}
execute if score n Random matches 7 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst",colors:[I;16757012]}]}}}}
execute if score n Random matches 8 at @e[tag=tbcMarkerAllCel,limit=1,sort=random] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"burst",colors:[I;15876863]}]}}}}