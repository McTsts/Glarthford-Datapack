# prepare
summon area_effect_cloud 0 0 0 {Tags:["sin_cos"]}
data modify entity @e[type=area_effect_cloud,tag=sin_cos,limit=1] Rotation[0] set from storage glarth:util sin_cos.in 
data modify entity @e[type=area_effect_cloud,tag=sin_cos,limit=1] Rotation[1] set value 0.0f

# cos
execute as @e[type=area_effect_cloud,tag=sin_cos,limit=1] positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
data modify storage glarth:util sin_cos.out.cos set from entity @e[type=area_effect_cloud,tag=sin_cos,limit=1] Pos[2]

# sin
execute as @e[type=area_effect_cloud,tag=sin_cos,limit=1] positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^-1
data modify storage glarth:util sin_cos.out.sin set from entity @e[type=area_effect_cloud,tag=sin_cos,limit=1] Pos[0]

# end
kill @e[type=area_effect_cloud,tag=sin_cos]