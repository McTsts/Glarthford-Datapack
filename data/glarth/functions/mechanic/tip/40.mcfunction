# Schedule Tip
execute as @a[tag=!tip40] run function glarth:mechanic/tip/all
tellraw @a[tag=!tip40] {"translate":"tip40","color":"green","italic":true} 
tag @a add tip40