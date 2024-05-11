tellraw @a ["",{"translate":"hint.mourner","color":"gray","italic":true}]
tp @e[tag=mourner,type=armor_stand] -82.5 25.9 -209.7
data merge entity @e[tag=mourner,limit=1] {Pose:{Head:[-80f,0f,0f]},NoGravity:1}
tag @e[tag=mourner,type=armor_stand] add b