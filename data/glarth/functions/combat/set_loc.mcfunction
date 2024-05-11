tp @s[tag=tbcEnemy1,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy1,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy2,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy2,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy3,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy3,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy4,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy4,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy5,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy5,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy6,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy6,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy7,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy7,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy8,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy8,limit=1,type=area_effect_cloud]
tp @s[tag=tbcEnemy9,tag=!stunned,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerEnemy9,limit=1,type=area_effect_cloud]

tp @s[tag=tbcPlayerAS1,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerPos1,limit=1,type=area_effect_cloud]
tp @s[tag=tbcPlayerAS2,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerPos2,limit=1,type=area_effect_cloud]
tp @s[tag=tbcPlayerAS3,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerPos3,limit=1,type=area_effect_cloud]

tp @s[tag=tbcCompanion1,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerCompB1,limit=1,type=area_effect_cloud]
tp @s[tag=tbcCompanion2,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerCompB2,limit=1,type=area_effect_cloud]
tp @s[tag=tbcCompanion3,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerCompB3,limit=1,type=area_effect_cloud]

tp @s[tag=tbcAlly1,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly1,limit=1,type=area_effect_cloud]
tp @s[tag=tbcAlly2,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly2,limit=1,type=area_effect_cloud]
tp @s[tag=tbcAlly3,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly3,limit=1,type=area_effect_cloud]
tp @s[tag=tbcAlly4,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly4,limit=1,type=area_effect_cloud]
tp @s[tag=tbcAlly5,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly5,limit=1,type=area_effect_cloud]
tp @s[tag=tbcAlly6,tag=!tbcDontUpdateLoc] @e[tag=tbcMarkerAlly6,limit=1,type=area_effect_cloud]

execute if score forceRot tbcStats matches 0 at @s[type=!player] run tp @s ~ ~ ~ facing entity @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud]

execute if score forceRot tbcStats matches 1 at @s[tag=tbcPlayerAS] run tp @s ~ ~ ~ 0 ~
execute if score forceRot tbcStats matches 1 at @s[tag=tbcAlly] run tp @s ~ ~ ~ 135 ~
execute if score forceRot tbcStats matches 1 at @s[tag=tbcEnemy] run tp @s ~ ~ ~ 180 ~