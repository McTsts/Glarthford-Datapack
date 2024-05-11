function glarth:mechanic/tip/all
tellraw @s[gamemode=adventure] {"translate":"tip30","color":"green","italic":true} 
execute at @s[gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip30","bold":false,"italic":true}]
tag @s add tip30