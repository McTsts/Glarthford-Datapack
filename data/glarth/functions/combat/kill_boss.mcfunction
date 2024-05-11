execute unless score lobbyTBC Stats matches 1.. run schedule function glarth:mechanic/do_win 100t
execute at @s as @e[tag=tbcEnemy,distance=0.1..] run function glarth:combat/kill_enemy
scoreboard players set winReady tbcStats 1
