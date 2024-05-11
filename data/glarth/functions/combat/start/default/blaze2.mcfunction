# Peaceful
execute if score difficulty Stats matches 0 run loot spawn ~ ~ ~ loot glarth:entities/blaze
execute if score difficulty Stats matches 0 run kill @s
execute if score difficulty Stats matches 0 run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Silent:1b,Invulnerable:1,Tags:["char","die","cnoc"]}
# PVE
execute if score combat Stats matches 1 if score difficulty Stats matches 1..3 run function glarth:combat/init_pve/default/blaze2
# TBC
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run tag @e[tag=tbcLoot,type=area_effect_cloud] add loot_blaze
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run schedule function glarth:mechanic/tip/40 90t
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run schedule function glarth:combat/init_tbc/default/blaze_b 20
