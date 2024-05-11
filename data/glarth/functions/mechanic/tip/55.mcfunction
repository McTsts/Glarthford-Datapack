execute as @a[tag=!tip55] at @s run function glarth:mechanic/tip/all
execute as @a[tag=!tip55] at @s run tellraw @s {"translate":"tip55","color":"green","italic":true} 
execute as @a[tag=!tip55] at @s run tag @s add tip55