tag @s[tag=lSpec] add lSpecTemp
tag @s add lSpec
tag @s[tag=lSpecTemp] remove lSpec
tag @s remove lSpecTemp
title @s actionbar ""

schedule function glarth:sign/combat/change 20t

function glarth:mechanic/lobby/change

execute if entity @s[tag=lSpec] unless entity @a[gamemode=adventure,tag=!lSpec] if block 175 24 -114 oak_wall_sign run function glarth:mechanic/lobby/boss/setup
execute if entity @s[tag=!lSpec] unless block 175 24 -114 oak_wall_sign run function glarth:mechanic/lobby/boss/setup