function glarth:combat/death

execute unless entity @s[scores={tbcTOU=1..}] unless entity @s[tag=tbcDeathUndo] run function glarth:combat/kill_enemy
tag @s remove tbcDeathUndo

execute if entity @s[scores={tbcTOU=1..}] at @s run function glarth:combat/enemy_totem