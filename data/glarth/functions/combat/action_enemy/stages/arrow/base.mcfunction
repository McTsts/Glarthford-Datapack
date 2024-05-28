execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
function glarth:combat/action_enemy/helper/summon_arrow
$$(command)
tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
function glarth:combat/action_enemy/util/next_stage