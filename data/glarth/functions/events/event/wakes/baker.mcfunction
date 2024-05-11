tag @e[tag=baker] remove sleep 
tp @e[tag=baker] 15 26 -214 0 0
data merge entity @e[tag=baker,limit=1] {Pose:{Head:[0.0f,0.0f,0.0f]},NoGravity:0} 
data merge block 14 26 -217 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"baker"}]}'} 
data merge block 17 30 -215 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"baker"}]}'} 
tag @e[tag=events,type=area_effect_cloud] add evBakerWakes