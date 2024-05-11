#1500
scoreboard players add @s br_limit 1
tp @s ^ ^ ^0.001
execute at @s unless block ~ ~ ~ air run function board:hit_block
execute if score @s br_limit matches 2700.. run tag @s add b_kill
execute if entity @s[tag=!b_kill] at @s run function board:trace