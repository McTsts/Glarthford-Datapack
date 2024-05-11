tp @e[tag=ender_priest] -47 81 -741 0 0
tag @e[tag=ender_priest] add char
tag @e[tag=ender_priest] remove cnoc
replaceitem entity @e[tag=ender_priest] armor.legs chainmail_leggings{display:{LocName:"empty"}} 1 
replaceitem entity @e[tag=ender_priest] armor.chest chainmail_chestplate{display:{LocName:"empty"}} 1
execute at @e[tag=ender_priest] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
tag @e[tag=ender_priest] remove tbcLoc102
tag @e[tag=ender_priest] add tbcLoc103