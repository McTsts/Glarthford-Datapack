scoreboard players add @s tbcAttackTimer 1
$execute facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^$(speed) ~ ~
$execute if score @s tbcAttackTimer matches $(time) run function glarth:combat/action_enemy/util/next_stage