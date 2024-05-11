particle minecraft:crit ~ ~0.1 ~ 0 -1 0 0.03 0
scoreboard players remove length tbcWhip 1
scoreboard players add rotation tbcWhip 1

execute as @e[tag=tbcPlayerAS,sort=nearest,limit=1,type=armor_stand,distance=..1.8,tag=!tbcWhipHit] run function glarth:combat/action/util/via_as
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..1.2] as @e[tag=tbcVia,limit=1] unless score @s blocking matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] as @e[tag=tbcVia,limit=1] unless score @s inBlock matches 0 run function glarth:combat/action/blocking_end
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run scoreboard players remove damage tbcStats 10
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] as @e[tag=tbcVia,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tag @s add tbcWhipHit
execute as @e[tag=tbcViaAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3] run tag @s remove tbcViaAS

execute if score length tbcWhip matches 1.. if score rotation tbcWhip matches 1.. run scoreboard players operation rotationX tbcWhip = rotation tbcWhip
execute if score length tbcWhip matches 1.. if score rotation tbcWhip matches 1.. run function glarth:combat/action_enemy/helper/whip_crit2_rot
execute if score length tbcWhip matches 1.. unless score rotation tbcWhip matches 1.. positioned ^ ^ ^0.2 run function glarth:combat/action_enemy/helper/whip_crit2