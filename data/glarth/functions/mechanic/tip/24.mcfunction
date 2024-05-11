# Schedule Tip
execute as @a[tag=!tip24] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip24,gamemode=adventure] {"translate":"tip24","color":"green","italic":true} 
execute at @s[tag=!tip24,gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip24","bold":false,"italic":true}]
tag @a add tip24