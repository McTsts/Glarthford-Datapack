tag @e[tag=baker] add sleep 
tp @e[tag=baker] 13.3 29.5 -213
data merge entity @e[tag=baker,limit=1] {Pose:{Head:[-90f,0f,0f]},NoGravity:1,Rotation:[-90f,0f]}
data merge block 14 26 -217 {Lock:"",CustomName:''}
data merge block 17 30 -215 {Lock:"",CustomName:''}
tag @e[tag=events,type=area_effect_cloud] remove evBakerWakes