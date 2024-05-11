# Fire
setblock 1 26 -201 air
setblock 3 27 -201 air
setblock 2 29 -202 air
setblock 2 29 -200 air
setblock 3 29 -200 air
setblock 1 29 -202 air

fill 1 29 -201 2 29 -201 white_wool
setblock 2 30 -202 minecraft:blue_carpet
setblock 2 29 -202 minecraft:blue_wool
setblock 2 30 -200 minecraft:blue_carpet
setblock 2 29 -200 minecraft:blue_wool
setblock 1 29 -202 minecraft:blue_carpet


tag @e[tag=events,type=area_effect_cloud] remove evMerchantDestroyed

# Resurrect Miller
execute as @e[tag=merchant2,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect