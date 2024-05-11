# Schedule Tip
execute as @a[tag=!tip47] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip47,gamemode=adventure] {"translate":"tip47","color":"green","italic":true} 
execute at @s[tag=!tip47,gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip47","bold":false,"italic":true}]
tag @a add tip47