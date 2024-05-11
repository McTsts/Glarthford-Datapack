execute unless score lowGraphics Stats matches 1 run particle dust 0 0 0 100 18 25 -265 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 18 25 -265
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 18 25 -265
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 18 25 -265
summon minecraft:lightning_bolt 18 25 -265

# Fire
setblock 17 27 -266 fire
setblock 17 26 -264 fire
setblock 21 26 -265 fire
setblock 19 26 -263 fire
setblock 18 28 -266 fire


tag @e[tag=events,type=area_effect_cloud] add evTentDestroyed

# Kill Miller
tag @e[tag=adventurer,tag=char,type=armor_stand] add die2