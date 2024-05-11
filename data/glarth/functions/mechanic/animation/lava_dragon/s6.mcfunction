function glarth:mechanic/animation/lava_dragon/spawn
tag @e[tag=lava_dragonB,type=armor_stand] add ldHQ
tag @e[tag=lava_dragonB,type=armor_stand] add lava_dragon6
tag @e[tag=lava_dragonB,type=armor_stand] add lava_dragonPerm
tag @e[tag=lava_dragonP,type=armor_stand] add ldNoParticle
tag @e[tag=lava_dragonP,type=armor_stand] add ldEndParticle
tp @e[tag=lava_dragonP,type=armor_stand] 511 25 12 90 0
execute as @e[tag=lava_dragonP] run data modify entity @s ArmorItems[3].id set value "diamond_shovel"