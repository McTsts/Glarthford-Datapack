$execute facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^$(speed) ~ ~
$execute if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..$(next_range)] run function glarth:combat/action_enemy/util/next_stage
