
# Fire
setblock 17 27 -266 air
setblock 17 26 -264 air
setblock 21 26 -265 air
setblock 19 26 -263 air
setblock 18 28 -266 air

tag @e[tag=events,type=area_effect_cloud] remove evTentDestroyed

# Resurrect Miller
execute as @e[tag=adventurer,tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect