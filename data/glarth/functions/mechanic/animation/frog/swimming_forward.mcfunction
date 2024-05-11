function glarth:mechanic/animation/frog/swimming_rotate

execute at @s unless block ^ ^ ^1 water unless block ^ ^ ^1 #all[waterlogged=true] run tp @s ~ ~ ~ ~15 ~
execute at @s unless block ^ ^ ^1 water unless block ^ ^ ^1 #all[waterlogged=true] run tp @s ~ ~ ~ ~15 ~
execute at @s if block ^ ^ ^1 #slabs run tp @s ~ ~ ~ ~15 ~
execute at @s if block ^ ^ ^1 #slabs run tp @s ~ ~ ~ ~15 ~
execute at @s unless block ^ ^ ^1 water unless block ^ ^ ^1 #all[waterlogged=true] unless block ^ ^ ^ seagrass run function glarth:mechanic/animation/frog/swimming_rotate
execute at @s if block ^ ^ ^1 water run function glarth:mechanic/animation/frog/swimming_push
execute at @s if block ^ ^ ^1 seagrass run function glarth:mechanic/animation/frog/swimming_push
execute at @s if block ^ ^ ^1 #all[waterlogged=true] unless block ^ ^ ^1 #slabs run function glarth:mechanic/animation/frog/swimming_push

