execute if entity @s[tag=!crowProx,tag=crowPeck] unless score @s crow matches 1.. run scoreboard players set @s crow 20
execute if entity @s[tag=crowProx,tag=crowPeck] if score @s crow matches 1.. run scoreboard players set @s crow 0
execute as @s[scores={crow=1..}] at @s run function glarth:mechanic/animation/crow/pecking

execute if entity @s[tag=crow1] run function glarth:mechanic/animation/crow/1
execute if entity @s[tag=crow2] run function glarth:mechanic/animation/crow/2
execute if entity @s[tag=crow3] run function glarth:mechanic/animation/crow/3
execute if entity @s[tag=crow4] run function glarth:mechanic/animation/crow/4
execute if entity @s[tag=crow5] run function glarth:mechanic/animation/crow/5
execute if entity @s[tag=crow6] run function glarth:mechanic/animation/crow/6
execute if entity @s[tag=crow7] run function glarth:mechanic/animation/crow/7
execute if entity @s[tag=crow8] run function glarth:mechanic/animation/crow/8
execute if entity @s[tag=crow9] run function glarth:mechanic/animation/crow/9
execute if entity @s[tag=crow10] run function glarth:mechanic/animation/crow/10
execute if entity @s[tag=crow11] run function glarth:mechanic/animation/crow/11
execute if entity @s[tag=crow12] run function glarth:mechanic/animation/crow/12
execute if entity @s[tag=crow13] run function glarth:mechanic/animation/crow/13
execute if entity @s[tag=crow14] run function glarth:mechanic/animation/crow/14
execute if entity @s[tag=crow15] run function glarth:mechanic/animation/crow/15
execute if entity @s[tag=crow16] run function glarth:mechanic/animation/crow/16
execute if entity @s[tag=crow17] run function glarth:mechanic/animation/crow/17
execute if entity @s[tag=crow18] run function glarth:mechanic/animation/crow/18
execute if entity @s[tag=crow19] run function glarth:mechanic/animation/crow/19
execute if entity @s[tag=crow20] run function glarth:mechanic/animation/crow/20
execute if entity @s[tag=crow21] run function glarth:mechanic/animation/crow/21

execute if entity @a[distance=..10,gamemode=!spectator] run tag @s add crowProx

execute if entity @s[tag=crowFlying] run function glarth:mechanic/animation/crow/flying

function glarth:mechanic/animation/crow/sound