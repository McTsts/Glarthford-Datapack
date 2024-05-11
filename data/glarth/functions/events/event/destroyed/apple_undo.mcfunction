# Fire
setblock -7 27 -268 air
setblock -7 27 -270 air
setblock -8 28 -268 air

tag @e[tag=events,type=area_effect_cloud] remove evAppleDestroyed

# Resurrect Miller
execute as @e[tag=apple,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect