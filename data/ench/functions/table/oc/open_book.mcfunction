scoreboard players set $c1 enchOpen 2025
scoreboard players set $c2 enchOpen 3375
scoreboard players set $d enchOpen 800
scoreboard players set $s enchOpen 10
scoreboard players operation $d enchOpen /= $s enchOpen

scoreboard players operation $e enchOpen = $d enchOpen
scoreboard players operation $e enchOpen *= @s enchOpen

scoreboard players operation $t enchOpen = $d enchOpen
scoreboard players operation $t enchOpen *= @s enchOpen
scoreboard players operation $t enchOpen += $c1 enchOpen
execute store result entity @e[tag=etCover1,limit=1,sort=nearest] Pose.Head[0] float 0.1 run scoreboard players get $t enchOpen
execute store result entity @e[tag=etPages1,limit=1,sort=nearest] Pose.Head[0] float 0.1 run scoreboard players get $t enchOpen

scoreboard players operation $t enchOpen -= $c1 enchOpen
scoreboard players operation $t enchOpen -= $c2 enchOpen
execute store result entity @e[tag=etCover2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen
execute store result entity @e[tag=etPages2,limit=1,sort=nearest] Pose.Head[0] float -0.1 run scoreboard players get $t enchOpen

