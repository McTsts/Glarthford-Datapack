execute as @e[tag=fr] run data merge entity @s {DeathTime:19,Health:0.0f,Pos:[0.0,0.0,0.0]}
scoreboard players add fr fr 1
scoreboard players operation fr fr %= 2 Const
execute if entity @s[type=player] run tag @s add inFR
execute if entity @e[tag=fisher,tag=fishing,tag=!b,tag=!deadChar] if score fr fr matches 0 run summon silverfish 6 27 -144 {Silent:1b,NoGravity:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],Tags:["frA","fr"],UUID:[I;0,2,0,100],Attributes:[{Name:generic.attack_damage,Base:0}],Team:"noc"}
execute if entity @e[tag=fisher,tag=fishing,tag=!b,tag=!deadChar] if score fr fr matches 0 run summon silverfish 9.9 29.0 -143.3 {Silent:1b,NoGravity:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],Tags:["frB","fr"],Leash:{UUID:[I;0,2,0,100]},Leashed:1b,Attributes:[{Name:generic.attack_damage,Base:0}],Team:"noc"}
execute if entity @e[tag=fisher,tag=fishing,tag=!b,tag=!deadChar] if score fr fr matches 1 run summon silverfish 6 27 -144 {Silent:1b,NoGravity:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],Tags:["frA","fr"],UUID:[I;0,2,0,101],Attributes:[{Name:generic.attack_damage,Base:0}],Team:"noc"}
execute if entity @e[tag=fisher,tag=fishing,tag=!b,tag=!deadChar] if score fr fr matches 1 run summon silverfish 9.9 29.0 -143.3 {Silent:1b,NoGravity:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],Tags:["frB","fr"],Leash:{UUID:[I;0,2,0,101]},Leashed:1b,Attributes:[{Name:generic.attack_damage,Base:0}],Team:"noc"}

execute positioned 10 26 -144 run kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:lead"}}]