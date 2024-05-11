scoreboard players add @s Animation 1
execute if entity @s[tag=frog1] run function glarth:mechanic/animation/frog/1
execute if entity @s[tag=frog2] run function glarth:mechanic/animation/frog/2
execute if entity @s[tag=frog3] run function glarth:mechanic/animation/frog/3
execute if entity @s[tag=frog14] run function glarth:mechanic/animation/frog/14
execute if entity @s[tag=frog15] run function glarth:mechanic/animation/frog/15
execute if entity @s[tag=frog16] run function glarth:mechanic/animation/frog/16
execute if entity @s[tag=frog17] run function glarth:mechanic/animation/frog/17

scoreboard players remove @s[scores={frog=1..}] frog 1
execute unless score @s frog matches 1.. run function glarth:mechanic/animation/frog/sound

execute if entity @s[tag=!frogSwimming,tag=!frogFleeing] if entity @a[distance=..6,gamemode=adventure] if score @s Animation matches 50.. run function glarth:mechanic/animation/frog/rotate


execute if entity @s[tag=frogFlee] if entity @a[distance=..6] if score @s Animation matches 50.. run tag @s add frogFleeing
execute if entity @s[tag=frogFleeing] if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/frog/fleeing
execute if entity @s[tag=frogSwimming] if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/frog/swimming