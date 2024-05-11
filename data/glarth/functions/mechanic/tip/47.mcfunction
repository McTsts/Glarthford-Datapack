# Schedule Tip
execute as @a[tag=!tip47] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip47] {"translate":"tip47","color":"green","italic":true} 
tag @a add tip47