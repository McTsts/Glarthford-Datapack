# Schedule Tip
execute as @a[tag=!tip46] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip46] {"translate":"tip46","color":"green","italic":true} 
tag @a add tip46