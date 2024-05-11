scoreboard players set $id ID 0
scoreboard players set $left ID 0
data modify storage glarth:main leave0 set value []
execute as @a run function glarth:mechanic/leave0/reset_player
execute as @a run function glarth:team/call