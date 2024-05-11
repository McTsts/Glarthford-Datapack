#
execute if score @s b_statse matches 1 as @e[tag=b_selected] run data merge entity @s {Glowing:0}
execute if score @s b_statse matches 1 run tag @e[tag=b_selected] remove b_selected
execute if score @s b_statse matches 1 run tag @s add b_selected
execute if score @s b_statse matches 1 run data merge entity @s {Glowing:1}
execute if score @s b_statse matches 1 run function board:check_possible
execute if score @s b_statse matches 0 if entity @e[tag=b_selected] run function board:check_dir
execute if score @s b_statse matches 2 if entity @e[tag=b_selected] run function board:check_dir2
execute if entity @s[tag=b_selected] run playsound minecraft:ui.button.click player @a[scores={b_playing=1}] ~ ~ ~ 1000 1