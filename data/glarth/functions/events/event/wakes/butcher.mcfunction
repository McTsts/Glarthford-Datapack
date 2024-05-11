tag @e[tag=butcher] remove sleep
tp @e[tag=butcher] -6 26 -215 -90 0
data merge entity @e[tag=butcher,limit=1] {Pose:{Head:[0.0f,0.0f,0.0f]},NoGravity:0} 
data merge block -2 30 -214 {Lock:"locked",CustomName:'{"translate":"invalid_chest","with":[{"translate":"butcher"}]}'}
tag @e[tag=events,type=area_effect_cloud] add evButcherWakes