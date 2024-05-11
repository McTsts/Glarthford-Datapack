scoreboard players reset * admap
scoreboard players set @a[gamemode=adventure] admap 0
scoreboard players set @a[gamemode=adventure,scores={admapWalk=0,admapSprint=0,admapJump=0}] admap 1
execute as @a[scores={admap=0},tag=mapUpdated] run function glarth:mechanic/admap/reset
execute as @a[scores={admap=1},tag=!mapUpdated] run function glarth:mechanic/admap/calc
function glarth:mechanic/admap/update
scoreboard players set @a admapJump 0