execute as @a[tag=func] run data modify storage glarth:main tempSkull set from entity @s UUID
execute store success score success Temp run data modify storage glarth:main tempSkull set from entity @s Owner
execute unless data entity @s Owner run scoreboard players set success Temp 1
execute if score success Temp matches 0 run tag @s add tbcCompanionN

execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0] append from entity @s
execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1] append from entity @s
execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2] append from entity @s

execute if entity @s[tag=tbcCompanionN,type=wolf] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0][-1] merge value {id:"wolf"}
execute if entity @s[tag=tbcCompanionN,type=wolf] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1][-1] merge value {id:"wolf"}
execute if entity @s[tag=tbcCompanionN,type=wolf] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2][-1] merge value {id:"wolf"}

execute if entity @s[tag=tbcCompanionN,type=horse] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0][-1] merge value {id:"horse"}
execute if entity @s[tag=tbcCompanionN,type=horse] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1][-1] merge value {id:"horse"}
execute if entity @s[tag=tbcCompanionN,type=horse] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2][-1] merge value {id:"horse"}

gamerule showDeathMessages false
tp @s[tag=tbcCompanionN] ~ 0 ~
kill @s[tag=tbcCompanionN]
gamerule showDeathMessages true