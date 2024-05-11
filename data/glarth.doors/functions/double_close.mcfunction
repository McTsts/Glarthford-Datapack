#
#facing west hinge right = PosZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=west,hinge=right,open=false] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:doors[facing=west,open=true] run function glarth:mechanic/door/to_birch
#facing east hinge left = PosZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=east,hinge=left,open=false] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:doors[facing=east,open=true] run function glarth:mechanic/door/to_birch

#facing south hinge right = PosX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=south,hinge=right,open=false] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=south,open=true] run function glarth:mechanic/door/to_birch
#facing north hinge left = PosX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=north,hinge=left,open=false] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=north,open=true] run function glarth:mechanic/door/to_birch

#facing west hinge left = NegZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=west,hinge=left,open=false] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:doors[facing=west,open=true] run function glarth:mechanic/door/to_birch
#facing east hinge right = NegZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=east,hinge=right,open=false] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:doors[facing=east,open=true] run function glarth:mechanic/door/to_birch

#facing south hinge left = NegX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=south,hinge=left,open=false] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=south,open=true] run function glarth:mechanic/door/to_birch
#facing north hinge right = NegX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=north,hinge=right,open=false] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=north,open=true] run function glarth:mechanic/door/to_birch
scoreboard players operation @s timer_t -= velocity timer_t