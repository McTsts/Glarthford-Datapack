execute if score @s timer_t matches ..-1 run scoreboard players set @s timer_t 0
 execute if score @s timer_t matches 91.. run scoreboard players set @s timer_t 90
scoreboard players operation time_min timer_t = @s timer_t
scoreboard players add time_min timer_t 180
scoreboard players add @s timer_t 0
scoreboard players add @s timer_p 0

data merge entity @s {Pose:{Head:[0.0f,0.00001f,0.0f]}}
execute as @s[tag=doorPositive,tag=doorRight] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s timer_t
execute as @s[tag=doorPositive,tag=doorLeft] store result entity @s Pose.Head[1] float -1 run scoreboard players get @s timer_t
execute as @s[tag=doorNegative,tag=doorRight] store result entity @s Pose.Head[1] float 1 run scoreboard players get time_min timer_t
execute as @s[tag=doorNegative,tag=doorLeft] store result entity @s Pose.Head[1] float -1 run scoreboard players get time_min timer_t
scoreboard players operation @s timer_p = @s timer_t
