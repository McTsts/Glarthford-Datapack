execute as @a[distance=..7,scores={b_playing=1,r_click=1..},limit=1,sort=nearest] at @s run function board:raycast

execute unless score win b_info matches 1..2 at @a[scores={b_playing=1,r_click=1..}] as @e[tag=board_as,tag=b_target] if score turn b_turn matches 0 run function board:select
#execute as @a[scores={b_playing=1,r_click=1..}] unless score turn b_turn matches 0 if entity @e[tag=board,tag=lobby] run title @s actionbar [{"text":"It's AI's turn","color":"gold"}]
tag @e[tag=board_as,type=minecraft:armor_stand] remove b_target