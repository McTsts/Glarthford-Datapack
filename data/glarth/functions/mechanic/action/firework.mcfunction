scoreboard players set r Random 15
function glarth:util/random
execute if score n Random matches 1 run summon firework_rocket 9 27 -147 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 2 run summon firework_rocket 32 29 -131 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 3 run summon firework_rocket 34 34 -149  {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 4 run summon firework_rocket 1 27 -156 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 5 run summon firework_rocket -15 28 -132 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 6 run summon firework_rocket -26 27 -127 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 7 run summon firework_rocket -35 26 -140 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 8 run summon firework_rocket -28 26 -155 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 9 run summon firework_rocket 1 26 -164 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 10 run summon firework_rocket 26 27 -160 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 11 run summon firework_rocket 15 27 -153 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 12 run summon firework_rocket 28 27 -163 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 13 run summon firework_rocket -14 26 -163 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 14 run summon firework_rocket 11 27 -145 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
execute if score n Random matches 15 run summon firework_rocket -4 27 -135 {LifeTime:30,FireworksItem:{id:"firework_rocket",count:1},Tags:["newFirework","end_scene"]}
scoreboard players set r Random 5
function glarth:util/random
execute if score n Random matches 1 run data merge entity @e[tag=newFirework,limit=1] {LifeTime:15}
execute if score n Random matches 2 run data merge entity @e[tag=newFirework,limit=1] {LifeTime:20}
execute if score n Random matches 3 run data merge entity @e[tag=newFirework,limit=1] {LifeTime:25}
execute if score n Random matches 4 run data merge entity @e[tag=newFirework,limit=1] {LifeTime:30}
execute if score n Random matches 5 run data merge entity @e[tag=newFirework,limit=1] {LifeTime:35}
scoreboard players set r Random 5
function glarth:util/random
execute if score n Random matches 1 run data merge entity @e[tag=newFirework,limit=1] {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;14561830]}]}}}}
execute if score n Random matches 2 run data merge entity @e[tag=newFirework,limit=1] {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;14587677]}]}}}}
execute if score n Random matches 3 run data merge entity @e[tag=newFirework,limit=1] {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;15923712]}]}}}}
execute if score n Random matches 4 run data merge entity @e[tag=newFirework,limit=1] {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;11359824]}]}}}}
execute if score n Random matches 5 run data merge entity @e[tag=newFirework,limit=1] {FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;13922901]}]}}}}

tag @e[tag=newFirework] remove newFirework