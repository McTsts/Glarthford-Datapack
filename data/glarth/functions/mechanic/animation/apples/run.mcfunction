execute if entity @a[x=-9,y=27,z=-264,distance=..20] run scoreboard players add apples Animation 1
execute if score apples Animation matches 100 run function glarth:mechanic/animation/apples/random
execute if score apples Animation matches 100 run scoreboard players set apples Animation -300
execute as @e[tag=applex,type=armor_stand] at @s if entity @a[distance=..50] run function glarth:mechanic/animation/apples/main
execute as @a[gamemode=adventure] at @s as @e[tag=appleSlime,type=slime,distance=..15] at @s run function glarth:mechanic/animation/apples/on_ground