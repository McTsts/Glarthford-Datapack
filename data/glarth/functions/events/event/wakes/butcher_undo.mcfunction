tag @e[tag=butcher] add sleep
tp @e[tag=butcher] 0.7 29.5 -211.8 
data merge entity @e[tag=butcher,limit=1] {Pose:{Head:[-90.0f,0.0f,0.0f]},NoGravity:1,Rotation:[110.0f,0.0f]}
data merge block -2 30 -214 {Lock:"",CustomName:""}
tag @e[tag=events,type=area_effect_cloud] remove evButcherWakes