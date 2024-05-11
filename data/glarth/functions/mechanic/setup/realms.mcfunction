# Censor Waterfall Cave Blood
execute if score realms Stats matches 0 run setblock 50 28 -133 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 52 28 -131 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 52 28 -129 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 52 29 -127 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 49 28 -126 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 47 28 -126 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 46 28 -128 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 53 28 -128 minecraft:redstone_wire
execute if score realms Stats matches 0 run setblock 53 28 -130 minecraft:redstone_wire

execute if score realms Stats matches 1 run setblock 50 28 -133 minecraft:air
execute if score realms Stats matches 1 run setblock 52 28 -131 minecraft:air
execute if score realms Stats matches 1 run setblock 52 28 -129 minecraft:air
execute if score realms Stats matches 1 run setblock 52 29 -127 minecraft:air
execute if score realms Stats matches 1 run setblock 49 28 -126 minecraft:air
execute if score realms Stats matches 1 run setblock 47 28 -126 minecraft:air
execute if score realms Stats matches 1 run setblock 46 28 -128 minecraft:air
execute if score realms Stats matches 1 run setblock 53 28 -128 minecraft:air
execute if score realms Stats matches 1 run setblock 53 28 -130 minecraft:air

# Censor Bear Cave Blood
execute if score realms Stats matches 0 run setblock 81 27 -227 redstone_wire
execute if score realms Stats matches 0 run setblock 79 26 -226 redstone_wire
execute if score realms Stats matches 0 run setblock 76 26 -231 redstone_wire

execute if score realms Stats matches 1 run setblock 81 27 -227 air
execute if score realms Stats matches 1 run setblock 79 26 -226 air
execute if score realms Stats matches 1 run setblock 76 26 -231 air

# Censor Butcher Pig Skull Blood
execute if score realms Stats matches 0 run setblock -2 27 -211 minecraft:redstone_wire

execute if score realms Stats matches 1 run setblock -2 27 -211 minecraft:air


# Censor Beer
execute if score realms Stats matches 1 run clone -59 18 -193 -59 18 -193 -59 27 -195
execute if score realms Stats matches 1 run clone -56 18 -186 -56 18 -186 -53 31 -186
execute if score realms Stats matches 1 if block -48 31 -196 chest run clone -49 18 -193 -49 18 -193 -48 31 -196
execute if score realms Stats matches 1 unless block -48 31 -196 chest run clone -49 18 -193 -49 18 -193 -49 31 -195
execute if score realms Stats matches 1 run clone -50 25 -183 -50 25 -183 -48 27 -184
execute if score realms Stats matches 1 run clone -57 18 -202 -57 18 -202 -59 27 -203


# Censor Sewers Blood
execute if score realms Stats matches 0 run setblock 129 26 -167 minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]
execute if score realms Stats matches 0 run setblock 130 26 -166 minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]
execute if score realms Stats matches 0 run setblock 133 26 -165 minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]
execute if score realms Stats matches 0 run setblock 137 26 -162 minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]
execute if score realms Stats matches 0 run setblock 137 26 -157 minecraft:redstone_wire[east=none,north=none,power=0,south=none,west=none]

execute if score realms Stats matches 1 run setblock 129 26 -167 minecraft:air
execute if score realms Stats matches 1 run setblock 130 26 -166 minecraft:air
execute if score realms Stats matches 1 run setblock 133 26 -165 minecraft:air
execute if score realms Stats matches 1 run setblock 137 26 -162 minecraft:air
execute if score realms Stats matches 1 run setblock 137 26 -157 minecraft:air

# Censor Butcher Model
execute if score realms Stats matches 1 run item replace entity @e[tag=butcher] armor.head with diamond_hoe{CustomModelData:506}

# Ts Skull 
execute if score realms Stats matches 0 run setblock 77 23 -253 minecraft:skeleton_skull[rotation=15]{}
execute if score realms Stats matches 0 run setblock 74 24 -258 minecraft:skeleton_skull[rotation=6]{}

execute if score realms Stats matches 1 run setblock 77 23 -253 comparator
execute if score realms Stats matches 1 run setblock 74 24 -258 minecraft:air

# Ts Redstone Trail
execute if score realms Stats matches 0 run setblock 69 27 -259 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 69 27 -259 minecraft:air

execute if score realms Stats matches 0 run setblock 70 27 -261 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 70 27 -261 minecraft:redstone_wire[power=3]

execute if score realms Stats matches 0 run setblock 72 27 -262 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 72 27 -262 minecraft:air

execute if score realms Stats matches 0 run setblock 72 27 -260 minecraft:air
execute if score realms Stats matches 0 run setblock 73 27 -260 minecraft:redstone_wire destroy
execute if score realms Stats matches 1 run setblock 73 27 -260 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 72 27 -260 minecraft:redstone_wire

execute if score realms Stats matches 0 run setblock 78 27 -261 minecraft:air
execute if score realms Stats matches 1 run setblock 78 27 -261 minecraft:comparator[facing=west]

execute if score realms Stats matches 0 run setblock 76 27 -260 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 76 27 -260 minecraft:air

execute if score realms Stats matches 0 run setblock 77 27 -261 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 77 27 -261 minecraft:redstone_wire[power=3]

execute if score realms Stats matches 0 run setblock 76 22 -257 minecraft:cobblestone
execute if score realms Stats matches 1 run setblock 76 22 -257 minecraft:redstone_lamp[lit=true]

execute if score realms Stats matches 0 run setblock 75 23 -257 minecraft:redstone_wire[power=0]
execute if score realms Stats matches 1 run setblock 75 23 -257 minecraft:redstone_wire[power=15]

execute if score realms Stats matches 0 run setblock 81 27 -259 air
execute if score realms Stats matches 0 run setblock 81 27 -260 minecraft:redstone_wire
execute if score realms Stats matches 1 run setblock 81 27 -259 target

execute if score realms Stats matches 0 run setblock 79 23 -257 cobblestone
execute if score realms Stats matches 1 run setblock 79 23 -257 piston

# Censor Mayor Grave
execute if score realms Stats matches 1 run clone -15 20 -177 -16 18 -178 -15 26 -178

# Ruins Blood 
execute if score realms Stats matches 0 run setblock -28 26 -177 redstone_wire
execute if score realms Stats matches 0 run setblock -26 26 -174 redstone_wire
execute if score realms Stats matches 0 run setblock -38 26 -179 redstone_wire
execute if score realms Stats matches 0 run setblock -40 26 -177 redstone_wire
execute if score realms Stats matches 0 run setblock -40 26 -172 redstone_wire
execute if score realms Stats matches 0 run setblock -45 26 -171 redstone_wire
execute if score realms Stats matches 0 run setblock -43 26 -168 redstone_wire
execute if score realms Stats matches 0 run setblock -47 26 -168 redstone_wire
execute if score realms Stats matches 0 run setblock -40 26 -167 redstone_wire
execute if score realms Stats matches 0 run setblock -39 26 -163 redstone_wire
execute if score realms Stats matches 0 run setblock -29 26 -162 redstone_wire

execute if score realms Stats matches 1 run setblock -28 26 -177 air
execute if score realms Stats matches 1 run setblock -26 26 -174 air
execute if score realms Stats matches 1 run setblock -38 26 -179 air
execute if score realms Stats matches 1 run setblock -40 26 -177 air
execute if score realms Stats matches 1 run setblock -40 26 -172 air
execute if score realms Stats matches 1 run setblock -45 26 -171 air
execute if score realms Stats matches 1 run setblock -43 26 -168 air
execute if score realms Stats matches 1 run setblock -47 26 -168 air
execute if score realms Stats matches 1 run setblock -40 26 -167 air
execute if score realms Stats matches 1 run setblock -39 26 -163 air
execute if score realms Stats matches 1 run setblock -29 26 -162 air

# RoA Grave
execute if score realms Stats matches 0 run clone 84 20 -242 84 18 -243 91 27 -239
execute if score realms Stats matches 1 run clone 82 20 -242 82 18 -243 91 27 -239