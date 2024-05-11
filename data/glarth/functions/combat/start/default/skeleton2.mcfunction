# Peaceful
execute if score difficulty Stats matches 0 run loot spawn ~ ~ ~ loot glarth:entities/skeleton
execute if score difficulty Stats matches 0 run kill @s
execute if score difficulty Stats matches 0 run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Silent:1b,Invulnerable:1,Tags:["char","die","cnoc"]}
# PVE
execute if score combat Stats matches 1 if score difficulty Stats matches 1..3 run function glarth:combat/init_pve/default/skeleton
# TBC
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run tag @e[tag=tbcLoot,type=area_effect_cloud] add loot_skeleton
execute if score combat Stats matches 0 if score difficulty Stats matches 1 run schedule function glarth:combat/init_tbc/default/skeleton_mines 20
execute if score combat Stats matches 0 if score difficulty Stats matches 2 run schedule function glarth:combat/init_tbc/default/skeleton_mines2 20
execute if score combat Stats matches 0 if score difficulty Stats matches 3 run schedule function glarth:combat/init_tbc/default/skeleton_mines3 20