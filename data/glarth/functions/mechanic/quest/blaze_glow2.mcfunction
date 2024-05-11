execute positioned -205 37 -189 if entity @p[distance=..5,gamemode=adventure] run data merge entity @e[tag=blaze,distance=..3,type=armor_stand,limit=1] {Glowing:1b}
execute positioned -205 37 -189 unless entity @p[distance=..5,gamemode=adventure] run data merge entity @e[tag=blaze,distance=..3,type=armor_stand,limit=1] {Glowing:0b}
