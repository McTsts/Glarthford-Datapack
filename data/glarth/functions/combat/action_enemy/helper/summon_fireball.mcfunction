execute store result score rot Temp run data get entity @s Rotation[0]

kill @e[tag=tbcArrowP]

$data modify storage glarth:main temp set value {angle:0,item:"fire_charge",color:"red",glow:1,loc:"$(loc)"}
# rotate fireball by 90°
scoreboard players operation rot2 Temp = rot Temp
scoreboard players remove rot2 Temp 90
execute if score rot2 Temp matches ..-180 run scoreboard players add rot2 Temp 360
execute store result storage glarth:main temp.angle int 1 run scoreboard players get rot2 Temp
function glarth:combat/action_enemy/helper/internal/summon_projectile with storage glarth:main temp


execute if entity @s[tag=tbcBlaze] run team join dark_gray @e[tag=tbcArrowPN]

execute at @s run playsound minecraft:entity.fire_charge.shoot hostile @a ~ ~ ~ 1 1