function glarth:combat/action_enemy/util/untarget
tag @e[tag=tbcAttackable] add rand_sel
function glarth:util/rand_sel/1
tag @e[tag=rand_sel_result,limit=1] add tbcTarget
execute as @e[tag=tbcTarget,scores={playerid=1}] run tag @e[tag=tbcPlayerAS1] add tbcTargetAS
execute as @e[tag=tbcTarget,scores={playerid=2}] run tag @e[tag=tbcPlayerAS2] add tbcTargetAS
execute as @e[tag=tbcTarget,scores={playerid=3}] run tag @e[tag=tbcPlayerAS3] add tbcTargetAS
execute as @e[tag=tbcTarget,scores={playerid=1}] run tag @e[tag=tbcMarkerPos1] add tbcTargetMarker
execute as @e[tag=tbcTarget,scores={playerid=2}] run tag @e[tag=tbcMarkerPos2] add tbcTargetMarker
execute as @e[tag=tbcTarget,scores={playerid=3}] run tag @e[tag=tbcMarkerPos3] add tbcTargetMarker
execute unless entity @e[tag=tbcTargetAS] run tag @e[tag=tbcTarget] add tbcTargetAS
execute as @e[scores={tbcID=1}] at @s facing entity @e[tag=tbcTargetAS] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~