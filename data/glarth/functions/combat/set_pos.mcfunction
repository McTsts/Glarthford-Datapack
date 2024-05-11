summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcPlayerRet"]}
tag @s add temp
execute as @e[tag=tbcPlayerRet,type=area_effect_cloud,limit=1,sort=nearest] at @s run function glarth:combat/set_pos2
tag @s remove temp