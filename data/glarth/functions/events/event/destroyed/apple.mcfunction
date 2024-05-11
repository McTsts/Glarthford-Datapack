execute unless score lowGraphics Stats matches 1 run particle dust 0 0 0 100 -7 26 -268 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -7 26 -268
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -7 26 -268
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -7 26 -268
summon minecraft:lightning_bolt -7 26 -268

# Fire
setblock -7 27 -268 fire
setblock -7 27 -270 fire
setblock -8 28 -268 fire


tag @e[tag=events,type=area_effect_cloud] add evAppleDestroyed

# Kill Miller
tag @e[tag=apple,tag=char,type=armor_stand] add die2