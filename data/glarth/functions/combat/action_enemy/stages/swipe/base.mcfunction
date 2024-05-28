scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
$execute if score @s tbcAttackTimer matches $(block_end) as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
$execute if score @s tbcAttackTimer matches 0..$(block_end) rotated ~ 0 run tp @s ^ ^ ^$(speed)
$execute if score @s tbcAttackTimer matches $(post_block) if score @e[tag=tbcTarget,limit=1] blocked matches 0 run function glarth:combat/action_enemy/stages/particles/$(particle)
$execute if score @s tbcAttackTimer matches $(post_block) run scoreboard players operation damage tbcStats = @s tbcStrength
$execute if score @s tbcAttackTimer matches $(post_block) run function glarth:combat/action_enemy/stages/$(function)
$execute if score @s tbcAttackTimer matches $(post_block) as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
$execute if score @s tbcAttackTimer matches $(next_stage) run function glarth:combat/action_enemy/util/next_stage