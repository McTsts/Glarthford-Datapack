execute store result score countB Temp store result storage glarth:main stack int 1 run clear @s spider_eye{0added:1} 0
function glarth:mechanic/fix0/stack/_calc
execute if score countA Temp matches 1.. if score countB Temp matches 1.. unless score countC Temp matches 0 at @s run clear @s spider_eye{0added:1}
execute if score countA Temp matches 1.. if score countB Temp matches 1.. unless score countC Temp matches 0 at @s run summon item ~ ~ ~ {Item:{id:"spider_eye",Count:1},PickupDelay:0,Tags:["stackNewItem"]}
execute if score countA Temp matches 1.. if score countB Temp matches 1.. unless score countC Temp matches 0 at @s run function glarth:mechanic/fix0/stack/_set