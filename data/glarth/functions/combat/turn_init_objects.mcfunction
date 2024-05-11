# Evoker Fangs
scoreboard players add @e[tag=tbcEvokerFangs,type=area_effect_cloud] tbcEvokerFangs 1
kill @e[tag=tbcEvokerFangs,type=area_effect_cloud,scores={tbcEvokerFangs=4..}]
tag @s remove tbcEFHit
# Fire Barrier
scoreboard players add @e[tag=tbcFireBarrier,type=area_effect_cloud] tbcFireBarrier 1
kill @e[tag=tbcFireBarrier,type=area_effect_cloud,scores={tbcFireBarrier=2..}]
tag @s remove tbcFBHit
# Dragon Breath
scoreboard players add @e[tag=tbcDragonBreath,type=area_effect_cloud] tbcDragonBreath 1
kill @e[tag=tbcDragonBreath,type=area_effect_cloud,scores={tbcDragonBreath=3..}]
# Fire Barrier
scoreboard players add @e[tag=tbcWitherBarrier,type=area_effect_cloud] tbcWitherBarrier 1
kill @e[tag=tbcWitherBarrier,type=area_effect_cloud,scores={tbcWitherBarrier=6..}]
tag @s remove tbcWBHit