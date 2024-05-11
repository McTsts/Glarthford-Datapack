execute unless score lowGraphics Stats matches 1 run particle dust 0 0 0 100 1 25 -201 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 1 25 -201
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 1 25 -201
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 1 25 -201
summon minecraft:lightning_bolt 1 25 -201

# Fire
setblock 1 26 -201 fire
setblock 3 27 -201 fire
setblock 2 29 -202 fire
setblock 2 29 -200 fire
setblock 3 29 -200 fire
setblock 1 29 -202 fire

setblock 2 30 -202 air
setblock 2 30 -200 air
fill 1 29 -201 2 29 -201 air
setblock 1 29 -202 air


tag @e[tag=events,type=area_effect_cloud] add evMerchantDestroyed

# Kill Miller
tag @e[tag=merchant2,tag=char,type=armor_stand] add die2