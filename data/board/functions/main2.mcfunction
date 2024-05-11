#
effect give @s minecraft:invisibility 1 1 true
#execute if entity @s[tag=!used] if entity @s[tag=game] as @a[distance=..7,scores={r_click=1..},limit=1,sort=nearest] run function glarth:mechanic/mayor/start
execute if entity @s[tag=!used,tag=!dead] as @a[distance=..7,scores={r_click=1..},limit=1,sort=nearest] run function board:start
execute if entity @s[tag=used] unless entity @a[scores={b_playing=1},distance=..7,gamemode=!spectator] if entity @s[tag=game] run function glarth:mechanic/mayor/end
execute if entity @s[tag=used] unless entity @a[scores={b_playing=1},distance=..7,gamemode=!spectator] if entity @s[tag=game] run function board:game_table
execute if entity @s[tag=used] unless entity @a[scores={b_playing=1},distance=..7] if entity @s[tag=lobby] run function board:lobby_table