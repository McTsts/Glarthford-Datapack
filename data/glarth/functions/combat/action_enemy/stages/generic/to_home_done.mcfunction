$execute facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^$(speed) ~ ~
$execute if entity @e[tag=tbcSelMarker,distance=..$(next_range)] run function glarth:combat/action_enemy/util/done