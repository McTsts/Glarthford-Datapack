tp @e[tag=fisher] 10 27 -145 90 0
execute as @e[tag=fr] run data merge entity @s {DeathTime:19,Health:0.0f}
tag @e[tag=fisher,tag=!a] add fishing
item replace entity @e[tag=fisher,tag=!a] armor.head with diamond_hoe{Damage:110}
kill @e[tag=minnow]
tag @a remove inFR
tag @e[tag=events,type=area_effect_cloud] remove evFisherMoves