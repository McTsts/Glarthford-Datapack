$execute if entity @s[tag=tbcReady] facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^$(continue_speed) ~ ~
execute if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/ready
$execute if entity @s[tag=!tbcReady] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^$(speed) ~ ~
$execute if entity @s[tag=!tbcReady] if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..$(next_range)] run function glarth:combat/action_enemy/util/ready