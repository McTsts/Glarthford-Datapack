execute positioned -205 37 -189 if entity @p[distance=..5,gamemode=adventure] run data merge entity @e[tag=blaze1,distance=..3,type=armor_stand,limit=1] {Glowing:1b}
execute positioned -205 37 -189 unless entity @p[distance=..5,gamemode=adventure] run data merge entity @e[tag=blaze1,distance=..3,type=armor_stand,limit=1] {Glowing:0b}

execute positioned -205 15 -221 unless entity @p[distance=..4,gamemode=adventure] run data merge entity @e[tag=blaze2,distance=..3,type=armor_stand,limit=1] {Glowing:0b}
execute positioned -205 15 -221 if entity @p[distance=..4,gamemode=adventure] run data merge entity @e[tag=blaze2,distance=..3,type=armor_stand,limit=1] {Glowing:1b}
execute positioned -201 14 -220 if entity @p[distance=..2,gamemode=adventure] run data merge entity @e[tag=blaze2,distance=..10,type=armor_stand,limit=1] {Glowing:1b}
execute positioned -202 15 -219 if entity @p[distance=..1.5,gamemode=adventure] run data merge entity @e[tag=blaze2,distance=..10,type=armor_stand,limit=1] {Glowing:1b}
