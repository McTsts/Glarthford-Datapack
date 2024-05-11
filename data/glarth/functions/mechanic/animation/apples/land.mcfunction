particle minecraft:cloud ~ ~1.5 ~ 0 0 0 0.1 5
tag @s remove applex
playsound minecraft:entity.generic.small_fall ambient @a ~ ~ ~ 1 1.4

tag @s add applelanded
execute store result score @s appleid run scoreboard players add #id appleid 1
summon slime ~ ~2.0 ~ {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Size:0,ActiveEffects:[{Id:14,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.knockback_resistance,Base:10000},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:0}],Tags:["appleSlime","appleSlimeNew"]}
scoreboard players operation @e[type=slime,tag=appleSlimeNew,limit=1,sort=nearest,distance=..2.5] appleid = @s appleid
tag @e[type=slime,tag=appleSlimeNew,limit=1,sort=nearest,distance=..2.5] remove appleSlimeNew