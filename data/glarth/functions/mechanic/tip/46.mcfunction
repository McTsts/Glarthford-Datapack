# Schedule Tip
execute as @a[tag=!tip46] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip46,gamemode=adventure] {"translate":"tip46","color":"green","italic":true} 
execute at @s[tag=!tip46,gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip46","bold":false,"italic":true}]
tag @a add tip46