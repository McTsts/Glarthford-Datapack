execute as @s[tag=duck1,scores={Animation=1..120}] at @s run tp @s ^ ^ ^0.03 ~-0.5 ~
execute as @s[tag=duck1,scores={Animation=121..1000}] at @s run tp @s ^ ^ ^0.03 ~-0.05 ~
execute as @s[tag=duck1,scores={Animation=1001..1300}] at @s run tp @s ^ ^ ^0.03 ~-0.5 ~
execute as @s[tag=duck1,scores={Animation=1301..1500}] at @s run tp @s ^ ^ ^0.03 ~0.25 ~
execute as @s[tag=duck1,scores={Animation=1..1500}] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob
execute as @s[tag=duck1,scores={Animation=1500}] at @s run function glarth:mechanic/animation/duck/fly
execute as @s[tag=duck1,scores={Animation=1500..1520}] at @s run tp @s ^ ^0.0025 ^0.03 ~ ~
execute as @s[tag=duck1,scores={Animation=1521..1540}] at @s run tp @s ^ ^0.005 ^0.03 ~ ~
execute as @s[tag=duck1,scores={Animation=1541..1560}] at @s run tp @s ^ ^0.01 ^0.03 ~ ~
execute as @s[tag=duck1,scores={Animation=1561..1570}] at @s run tp @s ^ ^0.02 ^0.03 ~-0.125 ~
execute as @s[tag=duck1,scores={Animation=1581..1600}] at @s run tp @s ^ ^0.03 ^0.03 ~-0.25 ~
execute as @s[tag=duck1,scores={Animation=1601..1800}] at @s run tp @s ^ ^0.04 ^0.04 ~-0.0625 ~
execute as @s[tag=duck1,scores={Animation=1801..2500}] at @s run tp @s ^ ^0.05 ^0.05 ~ ~
execute as @s[tag=duck1,scores={Animation=2500}] at @s run kill @s
function glarth:mechanic/animation/duck/sound_one