data merge entity @s[scores={action=1}] {NoGravity:1}
execute as @s[scores={action=120}] run function glarth:mechanic/animation/gates/city/open_east
execute as @s[scores={action=540}] run fill 66 29 -194 64 26 -193 air destroy
execute as @s[scores={action=540}] run setblock 66 26 -193 stone

execute if entity @s[scores={action=0..99}] run function glarth:mechanic/action/mine_wall/1
execute if entity @s[scores={action=100..199}] run function glarth:mechanic/action/mine_wall/2
execute if entity @s[scores={action=200..299}] run function glarth:mechanic/action/mine_wall/3
execute if entity @s[scores={action=300..399}] run function glarth:mechanic/action/mine_wall/4
execute if entity @s[scores={action=400..499}] run function glarth:mechanic/action/mine_wall/5
execute if entity @s[scores={action=500..599}] run function glarth:mechanic/action/mine_wall/6
execute if entity @s[scores={action=600..699}] run function glarth:mechanic/action/mine_wall/7
execute if entity @s[scores={action=700..799}] run function glarth:mechanic/action/mine_wall/8
execute if entity @s[scores={action=800..899}] run function glarth:mechanic/action/mine_wall/9
execute if entity @s[scores={action=900..999}] run function glarth:mechanic/action/mine_wall/10
