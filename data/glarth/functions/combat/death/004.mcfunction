tag @e[tag=tbcEnemy,type=armor_stand] remove tbcLonely
tag @e[tag=tbcEnemy,type=armor_stand] remove tbcUnselectable
tp @e[tag=tbcTempSelMarkerX] @e[tag=tbcTempSelMarker,limit=1]
tag @e[tag=tbcTempSelMarkerX] remove tbcTempSelMarkerX
kill @e[tag=tbcTempSelMarker]
kill @e[tag=charQEdog]
scoreboard players set @e[tag=tbcNecromancer] tbcQueue 100000