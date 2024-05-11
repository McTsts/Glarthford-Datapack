scoreboard players add @s enchOpen 1

execute if score @s enchOpen matches ..10 run function ench:table/oc/open_book
execute if score @s enchOpen matches 1..19 run function ench:table/oc/open_flip

execute if entity @s[scores={enchOpen=20..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":7}}]}
execute if entity @s[scores={enchOpen=20..}] run data merge entity @e[tag=etPage1,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":8}}]}
execute if entity @s[scores={enchOpen=20..}] run data merge entity @e[tag=etPage2,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"book",count:1,components:{"minecraft:custom_model_data":9}}]}
execute if entity @s[scores={enchOpen=20..}] run data merge entity @e[tag=etPage3,limit=1,sort=nearest] {Pose:{Head:[270.5f,260.0f,90.0f]}}
execute if entity @s[scores={enchOpen=20..}] run data merge entity @e[tag=etPage4,limit=1,sort=nearest] {Pose:{Head:[270.5f,260.0f,90.0f]}}
execute if entity @s[scores={enchOpen=20..}] run tag @s add etOpen
execute if entity @s[scores={enchOpen=20..}] run tag @s remove etOpening

execute at @s[scores={enchOpen=0}] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=1}] rotated ~90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=2}] rotated ~90 0 positioned ^ ^0.038 ^0.008 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=3}] rotated ~90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=4}] rotated ~90 0 positioned ^ ^0.051 ^0.006 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=5}] rotated ~90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=6}] rotated ~90 0 positioned ^ ^0.064 ^0.004 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=7}] rotated ~90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=8}] rotated ~90 0 positioned ^ ^0.077 ^0.002 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=9}] rotated ~90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=10..19}] rotated ~90 0 positioned ^ ^0.09 ^0.000 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

execute at @s[scores={enchOpen=0}] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=1}] rotated ~-90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=2}] rotated ~-90 0 positioned ^ ^0.038 ^0.008 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=3}] rotated ~-90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=4}] rotated ~-90 0 positioned ^ ^0.051 ^0.006 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=5}] rotated ~-90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=6}] rotated ~-90 0 positioned ^ ^0.064 ^0.004 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=7}] rotated ~-90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=8}] rotated ~-90 0 positioned ^ ^0.077 ^0.002 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=9}] rotated ~-90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=10..19}] rotated ~-90 0 positioned ^ ^0.09 ^0.000 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~