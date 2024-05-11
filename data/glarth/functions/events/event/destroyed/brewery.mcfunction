execute unless score lowGraphics Stats matches 1 run particle dust{color:[0.0,0.0,0.0],scale:4.0} -54 37 -189 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -54 37 -189
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -54 37 -189
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -54 37 -189
summon minecraft:lightning_bolt -54 37 -189

# Fire
clone -71 21 -163 -78 18 -167 -56 34 -191
setblock -53 31 -188 fire
setblock -52 32 -189 fire
fill -53 31 -190 -52 31 -190 fire


tag @e[tag=events,type=area_effect_cloud] add evBreweryDestroyed
