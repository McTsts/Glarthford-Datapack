scoreboard players operation @s tbcMaxHealth = @s tbcHealth
tag @s add tbcHBEntity
tag @s remove constructTBC
function glarth:combat/set_loc
execute at @s run summon armor_stand ~ ~1.7 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:"\"\"",CustomNameVisible:1,Tags:["tbc","tbcHealthBar"]}
execute at @s run summon armor_stand ~ ~1.4 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:"\"\"",CustomNameVisible:1,Tags:["tbc","tbcHealthBar2"]}