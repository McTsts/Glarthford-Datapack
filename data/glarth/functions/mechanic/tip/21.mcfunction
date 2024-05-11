function glarth:mechanic/tip/all
tellraw @s[gamemode=adventure] {"translate":"tip21","color":"green","italic":true,"with":[{"keybind":"key.advancements","color":"green","italic":true,"bold":true}]} 
execute at @s[gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip21","bold":false,"italic":true,"with":[{"keybind":"key.advancements","color":"green","italic":true,"bold":true}]}]
tag @s add tip21