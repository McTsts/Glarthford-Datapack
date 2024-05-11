execute unless score lowGraphics Stats matches 1 run particle dust{color:[0.0,0.0,0.0],scale:4.0} -30 29 -239 1 3 3 0.5 1000
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -30 29 -239
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -30 29 -239
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt -30 29 -239
summon minecraft:lightning_bolt -30 29 -239

# Fire
setblock -30 29 -238 fire
setblock -30 28 -241 fire
setblock -30 30 -239 fire
setblock -31 28 -240 fire
setblock -31 29 -239 fire


tag @e[tag=events,type=area_effect_cloud] add evCartDestroyed
