tp @e[tag=ender_priest] -47 81 -741 0 0
tag @e[tag=ender_priest] add char
tag @e[tag=ender_priest] remove cnoc
item replace entity @e[tag=ender_priest] armor.legs with minecraft:chainmail_leggings[] 1
item replace entity @e[tag=ender_priest] armor.chest with minecraft:chainmail_chestplate[] 1
execute at @e[tag=ender_priest] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
tag @e[tag=ender_priest] remove tbcLoc102
tag @e[tag=ender_priest] add tbcLoc103