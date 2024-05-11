scoreboard players set @a[scores={edgeJ=1},tag=developer] edgeJ 0

# First
execute as @a[scores={edge=1}] run function glarth:mechanic/action/first

# Joined
execute as @a[scores={edge=1}] run function glarth:mechanic/joined
execute as @a[scores={edgeJ=1}] run function glarth:mechanic/joined

# Current ID
execute as @a[scores={edgeJ=1}] run scoreboard players operation @s edgeIb = @s edgeI
execute as @a[scores={edgeJ=1}] run scoreboard players operation @s edgeIb -= id edgeI

# Lobby
execute if score game Stats matches 0 as @a[scores={edge=1}] unless score lobbyTBC Stats matches 1 run function glarth:mechanic/action/lobby
execute if score game Stats matches 0 as @a[scores={edgeJ=1}] unless score lobbyTBC Stats matches 1 run function glarth:mechanic/action/lobby

# Lobby TBC
execute if score game Stats matches 0 as @a[scores={edge=1}] if score lobbyTBC Stats matches 1 run function glarth:mechanic/action/spectator
execute if score game Stats matches 0 as @a[scores={edgeJ=1}] unless score @s edgeIb matches 0 if score lobbyTBC Stats matches 1 run function glarth:mechanic/action/spectator

# Ingame
execute if score game Stats matches 1 as @a[scores={edge=1}] run function glarth:mechanic/action/spectator
execute if score game Stats matches 1 as @a[scores={edgeJ=1}] unless score @s edgeIb matches 0 run function glarth:mechanic/action/spectator

# Season Lobby
execute if score game Stats matches -1 as @a[scores={edge=1}] run function glarth:mechanic/action/spectator
execute if score game Stats matches -1 as @a[scores={edgeJ=1}] run function glarth:mechanic/action/spectator

# Reset
scoreboard players set @a edgeJ 0
scoreboard players set @a registered 1
scoreboard players set @a[scores={edge=1}] MusicTime 0
scoreboard players set @a[scores={edgeJ=1}] MusicTime 0

