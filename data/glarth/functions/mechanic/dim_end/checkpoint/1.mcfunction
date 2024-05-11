tellraw @a ["",{"translate":"hint.checkpoint","color":"gold","italic":true}]

scoreboard players set endCheckpoint Stats 1

fill -16 66 -514 -19 66 -511 end_rod replace minecraft:brown_stained_glass_pane
execute as @a at @s run playsound minecraft:block.end_portal_frame.fill block @s ~ ~ ~ 1 0.5

schedule function glarth:mechanic/dim_end/checkpoint/1/a 5t
schedule function glarth:mechanic/dim_end/checkpoint/1/b 10t
schedule function glarth:mechanic/dim_end/checkpoint/1/c 15t