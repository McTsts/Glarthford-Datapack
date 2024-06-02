# calls another function function glarth:combat/action_enemy/$(function) and hands over everything passed in $(args), as well as all possible speed related arguments based on speed level $(speed)

data modify storage glarth:main tempSpeed set value {}
$data modify storage glarth:main tempSpeed.speed set value "$(speed)"
execute if data storage glarth:main tempSpeed{speed:"default"} run data modify storage glarth:main tempSpeed set value {walk_speed:0.35,next_range:0.35,pre_attack_speed:0.2,attack_range:2,attack_speed:0.05,block_end:15,post_block:16,attack_end:22,continue_speed:0.15}
execute if data storage glarth:main tempSpeed{speed:"fast"} run data modify storage glarth:main tempSpeed set value {walk_speed:0.45,next_range:0.45,pre_attack_speed:0.3,attack_range:2,attack_speed:0.1,block_end:7,post_block:8,attack_end:15,continue_speed:0.25}
execute if data storage glarth:main tempSpeed{speed:"rapid"} run data modify storage glarth:main tempSpeed set value {walk_speed:0.55,next_range:0.55,pre_attack_speed:0.5,attack_range:2.5,attack_speed:0.2,block_end:7,post_block:8,attack_end:15,continue_speed:0.35}

$data modify storage glarth:main tempSpeed merge value $(args)

$function glarth:combat/action_enemy/$(function) with storage glarth:main tempSpeed