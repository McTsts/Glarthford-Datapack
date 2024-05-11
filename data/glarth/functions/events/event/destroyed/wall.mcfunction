execute unless score lowGraphics Stats matches 1 run particle dust{color:[0.0,0.0,0.0],scale:4.0} 34 32 -181 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 34 32 -181
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 34 32 -181
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 34 32 -181
summon minecraft:lightning_bolt 34 32 -181

# Do
clone 40 10 -174 36 2 -183 32 26 -184

tag @e[tag=events,type=area_effect_cloud] add evWallDestroyed

