execute as @e[tag=owl_idle,type=armor_stand] at @s if entity @e[type=player,distance=..13] run function glarth:mechanic/animation/owl/convert

execute as @e[tag=owl_head,type=armor_stand] run function glarth:mechanic/animation/owl/main_ai
 
execute as @e[tag=owl,tag=!owl_head,type=armor_stand] at @s run function glarth:mechanic/animation/owl/sound
