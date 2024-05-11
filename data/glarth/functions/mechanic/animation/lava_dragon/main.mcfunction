data modify entity @e[tag=lava_dragonQ,distance=..2,sort=random,limit=1,type=armor_stand] Rotation set from entity @s Rotation
execute if entity @s[tag=ldMouth] run function glarth:mechanic/animation/lava_dragon/mouth

scoreboard players remove @s[scores={lavaDragonSound=1..}] lavaDragonSound 1
execute unless entity @s[tag=ldSilent] unless score @s lavaDragonSound matches 1.. run function glarth:mechanic/animation/lava_dragon/sound

execute if entity @s[tag=ldHQ] as @e[tag=lava_dragonP,tag=!ldAngle,type=armor_stand,distance=..15] run function glarth:mechanic/animation/lava_dragon/rotate
execute if entity @s[tag=!ldHQ] as @e[tag=lava_dragonP,tag=!ldAngle,type=armor_stand,distance=..15,limit=3,sort=random] run function glarth:mechanic/animation/lava_dragon/rotate
execute as @e[tag=lava_dragonP,tag=ldAngle,type=armor_stand,distance=..15] run function glarth:mechanic/animation/lava_dragon/rotate

execute as @e[tag=ld2,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld1,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld1,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld3,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld2,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld2,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld4,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld3,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld3,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld5,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld4,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld4,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld6,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld5,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld5,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld7,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld6,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld6,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld8,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld7,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld7,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld9,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld8,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld8,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld10,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld9,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld9,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld11,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld10,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld10,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld12,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld11,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld11,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld13,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld12,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld12,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld14,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld13,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld13,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld15,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld14,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld14,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld16,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld15,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld15,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld17,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld16,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld16,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld18,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld17,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld17,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld19,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld18,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld18,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld20,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s unless entity @e[tag=ld19,sort=nearest,limit=1,type=armor_stand,distance=..0.4] run tp @s ^ ^ ^0.1 facing entity @e[tag=ld19,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld2,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld1,sort=nearest,limit=1,type=armor_stand,distance=..0.2] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld1,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld3,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld2,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld2,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld4,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld3,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld3,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld5,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld4,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld4,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld6,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld5,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld5,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld7,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld6,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld6,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld8,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld7,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld7,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld9,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld8,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld8,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld10,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld9,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld9,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld11,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld10,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld10,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld12,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld11,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld11,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld13,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld12,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld12,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld14,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld13,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld13,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld15,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld14,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld14,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld16,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld15,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld15,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld17,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld16,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld16,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld18,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld17,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld17,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld19,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld18,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld18,distance=..15,sort=nearest,limit=1,type=armor_stand]
execute as @e[tag=ld20,type=armor_stand,distance=..15,limit=1,sort=nearest] at @s if entity @e[tag=ld19,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tp @s ^ ^ ^-0.1 facing entity @e[tag=ld19,distance=..15,sort=nearest,limit=1,type=armor_stand]

execute as @r[scores={bpBow=1}] run tag @s add bpTemp
execute as @r[tag=bpTemp] run scoreboard players reset * bpBow
execute as @r[tag=bpTemp] run scoreboard players set @s bpBow 100000
execute as @r[tag=bpTemp] run tag @a remove bpTemp
scoreboard players reset @a[scores={bpBow=2..99999}] bpBow
execute as @e[tag=lava_dragonP,limit=1,sort=random,tag=!lava_dragonB,tag=!lava_dragonQ,tag=!ldNoParticle] at @s run particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0 1
execute as @e[tag=lava_dragonP] at @s positioned ~ ~1.5 ~ at @e[type=arrow,distance=..1] run function glarth:mechanic/animation/lava_dragon/hit
execute as @e[tag=lava_dragonP,limit=1,sort=random,tag=!lava_dragonB,tag=!lava_dragonQ,tag=ldEndParticle] at @s run particle portal ~ ~1.5 ~ 0.3 0.3 0.3 0 1

execute unless score @s lavaDragonAnim matches 0.. run scoreboard players set @s lavaDragonAnim 1
execute as @s[tag=lava_dragon1] run function glarth:mechanic/animation/lava_dragon/1
execute as @s[tag=lava_dragon2] run function glarth:mechanic/animation/lava_dragon/2
execute as @s[tag=lava_dragon3] run function glarth:mechanic/animation/lava_dragon/3
execute as @s[tag=lava_dragon4] run function glarth:mechanic/animation/lava_dragon/4
execute as @s[tag=lava_dragon5] run function glarth:mechanic/animation/lava_dragon/5
execute as @s[tag=lava_dragon6] run function glarth:mechanic/animation/lava_dragon/6

