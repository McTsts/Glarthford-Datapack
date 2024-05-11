# Schedule Tip
execute as @a[tag=!tip40] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip40,gamemode=adventure] {"translate":"tip40","color":"green","italic":true} 
execute at @s[tag=!tip40,gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip40","bold":false,"italic":true}]
tag @a add tip40