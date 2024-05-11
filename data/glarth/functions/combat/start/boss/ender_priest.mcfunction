# Peaceful
execute if score difficulty Stats matches 0 if entity @e[tag=ender_priest,tag=!a] run loot spawn ~ ~ ~ loot glarth:entities/ender_priest
execute if score difficulty Stats matches 0 if entity @e[tag=ender_priest,tag=!a] run function glarth:mechanic/dim_end/ep_defeat
execute if score difficulty Stats matches 0 if entity @e[tag=ender_priest,tag=a] run function glarth:mechanic/do_win
execute if score difficulty Stats matches 0 if entity @e[tag=ender_priest,tag=a] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Silent:1b,Invulnerable:1,Tags:["char","die","cnoc"]}
execute if score difficulty Stats matches 0 if entity @e[tag=ender_priest,tag=a] run kill @s
# PVE
execute if score combat Stats matches 1 if score difficulty Stats matches 1..3 run function glarth:combat/init_pve/boss/ender_priest
# TBC
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 if entity @e[tag=ender_priest,tag=!a] run tag @e[tag=tbcLoot,type=area_effect_cloud] add loot_enderPriest
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 if entity @e[tag=ender_priest,tag=!a] run schedule function glarth:combat/init_tbc/boss/ender_priest1 20
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 if entity @e[tag=ender_priest,tag=a] run schedule function glarth:combat/init_tbc/boss/ender_priest2 20
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 unless entity @e[tag=ender_priest] run schedule function glarth:combat/init_tbc/boss/ender_priest2 20
# Other
scoreboard players set @a suffixB4 1

