execute store success score @s Success run clone ~7 ~7 ~7 ~-7 ~-7 ~-7 ~-7 ~-7 ~-7 filtered minecraft:trapped_chest force
execute if score @s Success matches 1 run function glarth:mechanic/tip/all
execute if score @s Success matches 1 run tellraw @s[gamemode=adventure] {"translate":"tip50","color":"green","italic":true} 
execute if score @s Success matches 1 as @a[gamemode=adventure] run tellraw @a[gamemode=spectator,distance=..5] [{"text":"@","color":"green","bold":true},{"selector":"@s"},": ",{"translate":"tip50","bold":false,"italic":true}]
execute if score @s Success matches 1 run tag @s add tip50