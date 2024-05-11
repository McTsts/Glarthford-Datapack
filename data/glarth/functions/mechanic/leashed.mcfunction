data modify storage glarth:main wolf set from entity @e[type=wolf,distance=..1,limit=1,sort=nearest] Leash
execute store result score success Temp run data modify storage glarth:main wolf.UUID set from entity @s UUID
tag @s add temp
execute if score success Temp matches 0 unless entity @s[distance=..7] as @e[type=wolf,distance=..1,limit=1,sort=nearest] at @s facing entity @p[tag=temp] feet positioned ^ ^ ^0.5 if block ^ ^ ^ #glarth:transparent run tp @s ~ ~ ~
tag @s remove temp