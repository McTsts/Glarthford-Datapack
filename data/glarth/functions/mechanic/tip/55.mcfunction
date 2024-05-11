execute as @a[tag=!tip55] at @s run function glarth:mechanic/tip/all
execute as @a[tag=!tip55] at @s run tellraw @s[gamemode=adventure] {"translate":"tip55","color":"green","italic":true} 
execute as @a[tag=!tip55] at @s[gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip55","bold":false,"italic":true}]
execute as @a[tag=!tip55] at @s run tag @s add tip55