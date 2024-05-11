particle minecraft:crit ~ ~0.1 ~ 0 -1 0 0.03 0
scoreboard players remove length tbcWhip 1
scoreboard players add rotation tbcWhip 1

execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..1.8,tag=!tbcWhipHit] unless entity @e[tag=tbcTargetAS,tag=tbcWhipHit] run function glarth:combat/action/util/via_init
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..1.5,tag=!tbcWhipHit] unless entity @e[tag=tbcTargetAS,tag=tbcWhipHit] run function glarth:combat/action/util/via_start
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3,tag=!tbcWhipHit] unless entity @s[tag=tbcTargetAS] run function glarth:combat/action/util/via_end
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3,tag=!tbcWhipHit] if entity @s[tag=tbcTargetAS] as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3,tag=!tbcWhipHit] run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3,tag=!tbcWhipHit] run function glarth:combat/action/util/via_damage
execute as @e[tag=tbcAttackableAS,sort=nearest,limit=1,type=armor_stand,distance=..0.3,tag=!tbcWhipHit] run tag @s add tbcWhipHit

execute if score length tbcWhip matches 1.. if score rotation tbcWhip matches 1.. run scoreboard players operation rotationX tbcWhip = rotation tbcWhip
execute if score length tbcWhip matches 1.. if score rotation tbcWhip matches 1.. run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score length tbcWhip matches 1.. unless score rotation tbcWhip matches 1.. positioned ^ ^ ^0.2 run function glarth:combat/action_enemy/helper/whip_crit