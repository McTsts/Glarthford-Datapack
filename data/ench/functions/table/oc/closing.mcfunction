scoreboard players remove @s enchOpen 1

execute if score @s enchOpen matches 10.. run function ench:table/oc/close_book

execute if entity @s[scores={enchOpen=0}] run tag @s remove etOpen
execute if entity @s[scores={enchOpen=0}] run tag @s remove etClosing


execute at @s[scores={enchOpen=20}] rotated ~90 0 positioned ^ ^0.09 ^0.000 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=19}] rotated ~90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=18}] rotated ~90 0 positioned ^ ^0.077 ^0.002 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=17}] rotated ~90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=16}] rotated ~90 0 positioned ^ ^0.064 ^0.004 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=15}] rotated ~90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=14}] rotated ~90 0 positioned ^ ^0.051 ^0.006 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=13}] rotated ~90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=12}] rotated ~90 0 positioned ^ ^0.038 ^0.008 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=11}] rotated ~90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[scores={enchOpen=1..10}] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~

execute at @s[scores={enchOpen=20}] rotated ~-90 0 positioned ^ ^0.09 ^0.000 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=19}] rotated ~-90 0 positioned ^ ^0.0835 ^0.001 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=18}] rotated ~-90 0 positioned ^ ^0.077 ^0.002 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=17}] rotated ~-90 0 positioned ^ ^0.0705 ^0.003 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=16}] rotated ~-90 0 positioned ^ ^0.064 ^0.004 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=15}] rotated ~-90 0 positioned ^ ^0.0575 ^0.005 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=14}] rotated ~-90 0 positioned ^ ^0.051 ^0.006 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=13}] rotated ~-90 0 positioned ^ ^0.0445 ^0.007 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=12}] rotated ~-90 0 positioned ^ ^0.038 ^0.008 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=11}] rotated ~-90 0 positioned ^ ^0.0315 ^0.009 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[scores={enchOpen=1..10}] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
