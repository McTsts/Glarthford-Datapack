execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 02 run scoreboard players set @a[gamemode=adventure] tbcBlindness 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 02 run scoreboard players set doPhanterra tbcStats 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 02 run function glarth:dialogue/grimsbane/lines/attack2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 05 as @e[tag=tbcEnemy,tag=!tbcBoss] run function glarth:combat/kill_enemy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 05 as @e[tag=tbcCompanion] run function glarth:combat/die_companion
# Sounds
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 55 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 60 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 65 run playsound minecraft:entity.phantom.bite hostile @s 419 53 -56 1 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run playsound minecraft:entity.phantom.death hostile @s 419 53 -56 1 0
# Fire
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run setblock 421 57 -60 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run setblock 421 57 -52 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run playsound minecraft:block.fire.extinguish hostile @a 421 57 -60 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run playsound minecraft:block.fire.extinguish hostile @a 421 57 -52 1 1
# Particles
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20..70 run particle smoke 419 54 -56 1 0.1 1 0 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 40..70 run particle nautilus 419 54 -56 1 0.1 1 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45..70 run particle nautilus 419 54 -56 1 0.1 1 2 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50..70 run particle nautilus 419 54 -56 1 0.1 1 5 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 55..70 run particle nautilus 419 54 -56 1 0.1 1 10 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 60..70 run particle nautilus 419 54 -56 1 0.1 1 20 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 65..70 run particle nautilus 419 54 -56 1 0.1 1 30 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run playsound minecraft:entity.generic.explode hostile @a 419 53 -56 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run particle minecraft:explosion 419 53 -56 1 1 1 0 10
# Flying Blocks
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run summon minecraft:falling_block 419 53 -56 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.0d,0.8d,0.0d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run setblock 419 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run summon minecraft:falling_block 419 53 -56 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.0d,0.8d,0.0d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run setblock 419 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run summon minecraft:falling_block 420 53 -56 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[-0.1d,0.7d,0.0d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run setblock 420 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 418 53 -56 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.1d,0.7d,0.0d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 418 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run summon minecraft:falling_block 419 53 -57 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.0d,0.7d,0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run setblock 419 53 -57 air 
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 419 53 -55 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.0d,0.7d,-0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 419 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run summon minecraft:falling_block 420 53 -55 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[-0.1d,0.7d,-0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run setblock 420 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run summon minecraft:falling_block 418 53 -57 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.1d,0.7d,0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run setblock 418 53 -57 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run summon minecraft:falling_block 418 53 -55 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[0.1d,0.7d,-0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run setblock 418 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run summon minecraft:falling_block 420 53 -57 {Tags:["tbcKillBlock"],BlockState:{Name:"blackstone"},Time:0,Motion:[-0.1d,0.7d,0.1d]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run setblock 420 53 -57 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run kill @e[tag=tbcKillBlock]
# Falling Blocks
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 419 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 419 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run summon minecraft:falling_block 418 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run setblock 418 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run summon minecraft:falling_block 420 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 72 run setblock 420 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run summon minecraft:falling_block 417 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run setblock 417 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 417 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 417 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run summon minecraft:falling_block 418 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 74 run setblock 418 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 419 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 419 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run summon minecraft:falling_block 420 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 71 run setblock 420 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run summon minecraft:falling_block 421 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 73 run setblock 421 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run summon minecraft:falling_block 421 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run setblock 421 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run summon minecraft:falling_block 419 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run setblock 419 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run summon minecraft:falling_block 420 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run setblock 420 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run summon minecraft:falling_block 421 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run setblock 421 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run summon minecraft:falling_block 419 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run setblock 419 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run summon minecraft:falling_block 420 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run setblock 420 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run summon minecraft:falling_block 421 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run setblock 421 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run summon minecraft:falling_block 417 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 76 run setblock 417 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run summon minecraft:falling_block 416 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75 run setblock 416 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run summon minecraft:falling_block 419 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run setblock 419 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run summon minecraft:falling_block 420 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run setblock 420 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run summon minecraft:falling_block 421 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run setblock 421 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run summon minecraft:falling_block 422 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run setblock 422 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run summon minecraft:falling_block 421 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run setblock 421 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run summon minecraft:falling_block 420 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run setblock 420 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 79 run summon minecraft:falling_block 419 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 79 run setblock 419 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run summon minecraft:falling_block 417 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 77 run setblock 417 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run summon minecraft:falling_block 416 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 78 run setblock 416 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 79 run summon minecraft:falling_block 416 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 79 run setblock 416 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run summon minecraft:falling_block 420 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run setblock 420 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run summon minecraft:falling_block 421 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run setblock 421 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run summon minecraft:falling_block 422 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run setblock 422 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run summon minecraft:falling_block 422 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run setblock 422 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run summon minecraft:falling_block 420 53 -51 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run setblock 420 53 -51 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run summon minecraft:falling_block 415 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 81 run setblock 415 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run summon minecraft:falling_block 415 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run setblock 415 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run summon minecraft:falling_block 414 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run setblock 414 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 82 run summon minecraft:falling_block 414 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 82 run setblock 414 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run summon minecraft:falling_block 413 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run setblock 413 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 82 run summon minecraft:falling_block 414 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 82 run setblock 414 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run summon minecraft:falling_block 414 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 83 run setblock 414 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run summon minecraft:falling_block 417 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run setblock 417 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run summon minecraft:falling_block 418 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run setblock 418 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run summon minecraft:falling_block 417 53 -62 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run setblock 417 53 -62 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run summon minecraft:falling_block 413 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run setblock 413 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run summon minecraft:falling_block 413 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run setblock 413 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run summon minecraft:falling_block 412 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run setblock 412 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run summon minecraft:falling_block 412 53 -54 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run setblock 412 53 -54 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run summon minecraft:falling_block 413 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 86 run setblock 413 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run summon minecraft:falling_block 414 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 85 run setblock 414 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run summon minecraft:falling_block 413 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 84 run setblock 413 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 417 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 417 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 416 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 416 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 415 53 -61 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 415 53 -61 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 416 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 416 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 418 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 418 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 417 53 -51 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 417 53 -51 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 417 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 417 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 416 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 416 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 416 53 -49 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 416 53 -49 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 412 53 -53 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 412 53 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 412 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 412 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 411 53 -52 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 411 53 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 412 53 -51 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 412 53 -51 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 412 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 412 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 411 53 -55 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 411 53 -55 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 413 53 -57 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 413 53 -57 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 413 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 413 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run summon minecraft:falling_block 412 53 -57 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 87 run setblock 412 53 -57 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run summon minecraft:falling_block 413 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 89 run setblock 413 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run summon minecraft:falling_block 411 53 -56 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 88 run setblock 411 53 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run summon minecraft:falling_block 413 53 -49 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run setblock 413 53 -49 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 412 53 -49 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 412 53 -49 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run summon minecraft:falling_block 412 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run setblock 412 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 411 53 -51 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 411 53 -51 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run summon minecraft:falling_block 411 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run setblock 411 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run summon minecraft:falling_block 410 53 -50 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run setblock 410 53 -50 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 411 53 -49 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 411 53 -49 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run summon minecraft:falling_block 413 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run setblock 413 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 412 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 412 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run summon minecraft:falling_block 412 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run setblock 412 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run summon minecraft:falling_block 412 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run setblock 412 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 411 53 -57 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 411 53 -57 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run summon minecraft:falling_block 411 53 -58 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 91 run setblock 411 53 -58 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run summon minecraft:falling_block 411 53 -59 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run setblock 411 53 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run summon minecraft:falling_block 411 53 -60 {BlockState:{Name:"blackstone"},Time:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run setblock 411 53 -60 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 92 run fill 404 53 -52 411 53 -64 air replace blackstone
# Pillars
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70..114 run scoreboard players add @e[tag=tbcPillar2] Animation 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 75..94 run scoreboard players add @e[tag=tbcPillar1] Animation 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 105..114 run scoreboard players add @e[tag=tbcPillar1] Animation 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70..114 as @e[tag=tbcPillar,scores={Animation=1..}] store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Animation
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 95 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-1.0f,3.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 96 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-2.0f,6.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 97 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-3.0f,9.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 98 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-4.0f,12.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 99 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-5.0f,15.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-6.0f,18.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 101 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-7.0f,21.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 102 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-8.0f,24.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 103 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-9.0f,27.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 104 run data merge entity @e[tag=tbcPillar1,limit=1] {Pose:{Head:[59.0f,-10.0f,30.0f]}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 115..140 as @e[tag=tbcPillar] at @s run tp @s ~ ~-0.4 ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 140 run kill @e[tag=tbcPillar] 
# Pillars Lower
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100..130 run scoreboard players add @e[tag=tbcPillarL] Animation 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100..130 as @e[tag=tbcPillarL] at @s run tp @s ~ ~-0.2 ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100..130 as @e[tag=tbcPillarL1,scores={Animation=1..}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players get @s Animation
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100..130 as @e[tag=tbcPillarL2,scores={Animation=1..}] store result entity @s Pose.Head[0] float -0.5 run scoreboard players get @s Animation
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100..130 as @e[tag=tbcPillarL,scores={Animation=1..}] store result entity @s Pose.Head[2] float -0.5 run scoreboard players get @s Animation
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 130 run kill @e[tag=tbcPillarL] 
# Phantom
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 120 positioned 419 43 -56 run function glarth:mechanic/animation/phanterra/do/spawn
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 120 positioned 419 43 -56 run particle minecraft:explosion ~ ~ ~ 1 1 1 0 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 120..170 as @e[tag=phanterra] at @s run tp @s ~ ~0.2 ~
# Block Break
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 190..192 at @e[tag=phanterra] run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 190..195 at @e[tag=phanterra] run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 190 run fill 417 53 -57 416 53 -57 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 192 run fill 418 53 -60 418 53 -59 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 194 run fill 417 53 -59 417 53 -58 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 196 run fill 418 53 -53 417 53 -52 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run fill 415 53 -56 416 53 -58 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run kill @e[tag=tbcMarkerPov]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run kill @e[tag=tbcMarkerPlayer]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run kill @e[tag=tbcMarkerMiddle]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run kill @e[tag=tbcMarkerMiddleB]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run kill @e[tag=tbcMarkerEnemy]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 as @e[tag=tbcPlayerAS] run data merge entity @s {NoGravity:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run effect give @a minecraft:resistance 2 120 true 
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run fill 413 52 -60 411 41 -52 minecraft:barrier
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run fill 412 52 -53 412 40 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run fill 412 52 -56 412 40 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run fill 412 52 -59 412 40 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 198 run setblock 412 55 -56 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run scoreboard players add damage tbcStats 30
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run scoreboard players set damageType tbcStats 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 215 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 224 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 225 as @e[tag=tbcAttackable] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run fill 415 53 -53 419 53 -51 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 200 run setblock 412 55 -53 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 202 run fill 414 53 -57 416 53 -60 air destroy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 202 run setblock 412 55 -59 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run fill 413 52 -60 411 41 -52 air
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 250 run fill 412 40 -60 412 40 -52 minecraft:barrier
# Teleport
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 260 run function glarth:combat/init_arena/grimsbane_arena_bottom
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 261 at @e[tag=tbcMarkerEnemy1] run particle minecraft:portal ~ ~ ~ 1 1 1 1 100
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 261 as @e[tag=tbcMarkerEnemy1] at @s run tp @s ~ ~ ~ 90 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 261 at @e[tag=tbcMarkerEnemy1] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 260 run effect give @a blindness 1 0 true
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 262 run tp @e[tag=tbcEnemy1] @e[tag=tbcMarkerEnemy1,limit=1]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 265 at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest] ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 265 at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest] ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 220..230 as @e[tag=phanterra] at @s run tp @s ~-0.2 ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 231..316 as @e[tag=phanterra] at @s run tp @s ~ ~-0.19 ~ ~2.0930232558139534883720930232558 ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 309 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 320..380 as @e[tag=phanterra] at @s run tp @s ~0.2 ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 375 run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 395..414 as @e[tag=phanterra] at @s run tp @s ~ ~ ~ ~9 ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 450 at @e[tag=phanterra] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterra","tbcMarkerPhanterraPos"]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 450 run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
