
effect give @e[tag=board_rc,type=minecraft:villager] minecraft:invisibility 1 1 true
execute unless score win b_info matches 1..2 at @e[tag=board,tag=used,type=minecraft:villager] run function board:ingame
execute as @e[tag=board,type=minecraft:villager] at @s run function board:main2
scoreboard players reset * r_click
