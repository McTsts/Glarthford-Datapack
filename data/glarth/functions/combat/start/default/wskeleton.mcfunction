# Peaceful
execute if score difficulty Stats matches 0 run loot spawn ~ ~ ~ loot glarth:entities/wither_skeleton
execute if score difficulty Stats matches 0 run kill @s
execute if score difficulty Stats matches 0 run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Silent:1b,Invulnerable:1,Tags:["char","die","cnoc"]}
# PVE
execute if score combat Stats matches 1 if score difficulty Stats matches 1..3 run function glarth:combat/init_pve/default/wither_skeleton
# TBC
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 if entity @s[tag=ws1] run kill @e[tag=tbcLoot]
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 if entity @s[tag=ws1] run summon minecraft:area_effect_cloud -180 29 -195 {Radius:0.0f,Duration:2147483647,Tags:["tbcLoot","loot_witherSkeleton"]}
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 unless entity @s[tag=ws1] run tag @e[tag=tbcLoot,type=area_effect_cloud] add loot_witherSkeleton
execute if score combat Stats matches 0 if score difficulty Stats matches 1 run schedule function glarth:combat/init_tbc/default/wither_skeleton 20
execute if score combat Stats matches 0 if score difficulty Stats matches 2 run schedule function glarth:combat/init_tbc/default/wither_skeleton2 20
execute if score combat Stats matches 0 if score difficulty Stats matches 3 run schedule function glarth:combat/init_tbc/default/wither_skeleton3 20