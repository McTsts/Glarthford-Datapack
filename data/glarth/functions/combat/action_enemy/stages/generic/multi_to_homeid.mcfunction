$execute facing entity @e[scores={tbcIDM=$(id)}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^$(speed) ~ ~
$execute if entity @e[scores={tbcIDM=$(id)},distance=..$(next_range)] run function glarth:combat/action_enemy/util/ready