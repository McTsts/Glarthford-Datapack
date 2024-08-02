execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
$function glarth:combat/action_enemy/helper/$(type) {loc:"$(loc)"}
$$(command1)
$tp @e[tag=tbcArrowPN,type=armor_stand] $(loc) facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
$execute as @e[tag=tbcArrowPN] run $(command2)
tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
function glarth:combat/action_enemy/util/next_stage