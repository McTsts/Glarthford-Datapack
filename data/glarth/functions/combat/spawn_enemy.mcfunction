scoreboard players operation @s tbcMaxHealth = @s tbcHealth
tag @s add tbcHBEntity
tag @s remove constructTBC
function glarth:combat/set_loc
execute if entity @s[tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] at @s run summon armor_stand ~ ~1.7 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar"]}
execute if entity @s[tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] at @s run summon armor_stand ~ ~1.4 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar2"]}
execute if entity @s[tag=tbcEnemyTall] at @s run summon armor_stand ~ ~2.9 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar","tbcTallHealth"]}
execute if entity @s[tag=tbcEnemyTall] at @s run summon armor_stand ~ ~2.6 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar2","tbcTallHealth"]}
execute if entity @s[tag=tbcEnemyVeryTall] at @s run summon armor_stand ~ ~4.9 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar","tbcVeryTallHealth"]}
execute if entity @s[tag=tbcEnemyVeryTall] at @s run summon armor_stand ~ ~4.6 ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:'""',CustomNameVisible:1,Tags:["tbc","tbcHealthBar2","tbcVeryTallHealth"]}