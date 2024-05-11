scoreboard players set $p1 enchOpen 2925
scoreboard players set $p2 enchOpen 2475
scoreboard players set $p3 enchOpen 3600
scoreboard players set $p4 enchOpen 1800
scoreboard players set $d enchOpen 7200
scoreboard players set $s enchOpen 19
scoreboard players operation $d enchOpen /= $s enchOpen

scoreboard players operation $e1 enchOpen = $e enchOpen
scoreboard players add $e1 enchOpen 0
scoreboard players set $e2 enchOpen 3600
scoreboard players operation $e2 enchOpen -= $e enchOpen
scoreboard players add $e2 enchOpen 0

scoreboard players operation $t enchOpen = $d enchOpen
scoreboard players operation $t enchOpen *= @s enchOpen
scoreboard players operation $t enchOpen -= $p1 enchOpen
function ench:table/oc/calc_t2
data merge entity @e[tag=etPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":8}}]}
execute if score $t2 enchOpen <= $e1 enchOpen store result entity @e[tag=etPage1,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute unless score $t2 enchOpen <= $e2 enchOpen store result entity @e[tag=etPage1,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute if score $t2 enchOpen > $e1 enchOpen unless score $t2 enchOpen > $e2 enchOpen run data merge entity @e[tag=etPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":10}}]}


scoreboard players operation $t enchOpen += $p1 enchOpen
scoreboard players operation $t enchOpen -= $p2 enchOpen
function ench:table/oc/calc_t2b
data merge entity @e[tag=etPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":9}}]}
execute if score $t2 enchOpen <= $e1 enchOpen store result entity @e[tag=etPage2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute unless score $t2 enchOpen <= $e2 enchOpen store result entity @e[tag=etPage2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute if score $t2 enchOpen > $e1 enchOpen unless score $t2 enchOpen > $e2 enchOpen run data merge entity @e[tag=etPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":10}}]}

scoreboard players operation $t enchOpen += $p2 enchOpen
scoreboard players operation $t enchOpen -= $p3 enchOpen
function ench:table/oc/calc_t2
data merge entity @e[tag=etPage3,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":8}}]}
execute if score $t2 enchOpen <= $e1 enchOpen store result entity @e[tag=etPage3,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute unless score $t2 enchOpen <= $e2 enchOpen store result entity @e[tag=etPage3,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute if score $t2 enchOpen > $e1 enchOpen unless score $t2 enchOpen > $e2 enchOpen run data merge entity @e[tag=etPage3,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":10}}]}

scoreboard players operation $t enchOpen += $p3 enchOpen
scoreboard players operation $t enchOpen -= $p4 enchOpen
function ench:table/oc/calc_t2b
data merge entity @e[tag=etPage4,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":9}}]}
execute if score $t2 enchOpen <= $e1 enchOpen store result entity @e[tag=etPage4,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute unless score $t2 enchOpen <= $e2 enchOpen store result entity @e[tag=etPage4,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute if score $t2 enchOpen > $e1 enchOpen unless score $t2 enchOpen > $e2 enchOpen run data merge entity @e[tag=etPage4,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":10}}]}