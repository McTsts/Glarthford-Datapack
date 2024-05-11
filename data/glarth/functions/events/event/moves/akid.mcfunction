tp @e[tag=akid] 1 26 -174 -45 0
summon wolf 2.7 26 -172.3 {Rotation:[135.0f,0.0f],Invulnerable:1,NoAI:1,Sitting:1,Tame:1,Tags:["akid_dog","newAnimal"]}
scoreboard players operation @e[tag=newAnimal] netherID = id edgeI
tag @e[tag=newAnimal] remove newAnimal
tag @e[tag=events,type=area_effect_cloud] add evAkidMoves