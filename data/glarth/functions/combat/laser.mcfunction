execute at @e[tag=tbcEnderPriest] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker2","tbc"]}
scoreboard players set rec Temp 100
execute at @e[tag=tbcActualCrystal,limit=1,sort=nearest] positioned ~ ~0.75 ~ run function glarth:combat/action_enemy/helper/laser2
kill @e[tag=tbcTempMarker2]