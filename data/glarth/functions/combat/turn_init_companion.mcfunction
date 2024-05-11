execute if entity @s[tag=tbcCompanion1] run tp @s @e[tag=tbcMarkerCompF1,type=area_effect_cloud,limit=1,sort=nearest]
execute if entity @s[tag=tbcCompanion2] run tp @s @e[tag=tbcMarkerCompF2,type=area_effect_cloud,limit=1,sort=nearest]
execute if entity @s[tag=tbcCompanion3] run tp @s @e[tag=tbcMarkerCompF3,type=area_effect_cloud,limit=1,sort=nearest]

execute if entity @s[tag=tbcCompanion1] run tag @e[tag=tbcMarkerCompF1] add tbcSelcMarker
execute if entity @s[tag=tbcCompanion2] run tag @e[tag=tbcMarkerCompF2] add tbcSelcMarker
execute if entity @s[tag=tbcCompanion3] run tag @e[tag=tbcMarkerCompF3] add tbcSelcMarker

execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] run tag @s add tbcCompSkip
execute unless entity @s[tag=tbcCompSkip] run function glarth:combat/attack_companion
execute if entity @s[tag=tbcCompSkip] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.c"}]
execute if entity @s[tag=tbcCompSkip] run function glarth:combat/done
tag @s remove tbcCompSkip


data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:1,CustomName:"[{\"text\":\"|| \",\"color\":\"red\",\"bold\":true},{\"translate\":\"tbc.selected\",\"bold\":true,\"color\":\"gray\"},{\"text\":\" ||\",\"color\":\"red\",\"bold\":true}]"}




