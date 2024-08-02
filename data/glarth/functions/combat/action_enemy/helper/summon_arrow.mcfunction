execute store result score rot Temp run data get entity @s Rotation[0]

kill @e[tag=tbcArrowP]

$data modify storage glarth:main temp set value {angle:0,item:"arrow",color:"white",glow:0,loc:"$(loc)"}
execute store result storage glarth:main temp.angle int 1 run scoreboard players get rot Temp
function glarth:combat/action_enemy/helper/internal/summon_projectile with storage glarth:main temp

execute at @s run playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 1 1