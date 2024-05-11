#facing west hinge right = PosZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=west,hinge=right,open=true] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run function glarth:mechanic/door/to_open
#facing east hinge left = PosZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=east,hinge=left,open=true] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run function glarth:mechanic/door/to_open

#facing south hinge right = PosX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=south,hinge=right,open=true] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run function glarth:mechanic/door/to_open
#facing north hinge left = PosX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=north,hinge=left,open=true] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run function glarth:mechanic/door/to_open

#facing west hinge left = NegZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=west,hinge=left,open=true] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run function glarth:mechanic/door/to_open
#facing east hinge right = NegZ
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=east,hinge=right,open=true] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run function glarth:mechanic/door/to_open

#facing south hinge left = NegX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=south,hinge=left,open=true] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run function glarth:mechanic/door/to_open
#facing north hinge right = NegX
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #minecraft:doors[facing=north,hinge=right,open=true] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run function glarth:mechanic/door/to_open
scoreboard players operation @s timer_t += velocity timer_t