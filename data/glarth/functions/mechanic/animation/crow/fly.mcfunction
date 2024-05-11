particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.05 1
playsound minecraft:entity.bat.takeoff neutral @a ~ ~ ~ 0.3 0.8
data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:159}}]}
scoreboard players set @s crow 0
scoreboard players set @s Animation 1
tag @s add crowFlying
function glarth:mechanic/animation/crow/sound2