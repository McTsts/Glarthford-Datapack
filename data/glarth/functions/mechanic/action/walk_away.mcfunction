tp @s[scores={action=0}] -66.5 27.0 -210.5 -90 0
item replace entity @e[tag=graveyard,scores={action=0}] armor.head with diamond_hoe{Damage:16}
item replace entity @e[tag=graveyard,scores={action=1}] armor.head with diamond_hoe{Damage:121}
execute if entity @s[scores={action=1..100}] run function glarth:mechanic/action/walk_away/1
execute if entity @s[scores={action=101..200}] run function glarth:mechanic/action/walk_away/2
execute if entity @s[scores={action=201..300}] run function glarth:mechanic/action/walk_away/3
execute if entity @s[scores={action=301..400}] run function glarth:mechanic/action/walk_away/4
execute if entity @s[scores={action=401..500}] run function glarth:mechanic/action/walk_away/5
execute if entity @s[scores={action=501..600}] run function glarth:mechanic/action/walk_away/6
execute if entity @s[scores={action=601..700}] run function glarth:mechanic/action/walk_away/7
execute if entity @s[scores={action=701..800}] run function glarth:mechanic/action/walk_away/8
execute if entity @s[scores={action=801..900}] run function glarth:mechanic/action/walk_away/9
execute if entity @s[scores={action=901..1000}] run function glarth:mechanic/action/walk_away/10
execute if entity @s[scores={action=1001..1100}] run function glarth:mechanic/action/walk_away/11
execute if entity @s[scores={action=1101..1200}] run function glarth:mechanic/action/walk_away/12
execute if entity @s[scores={action=1201..1300}] run function glarth:mechanic/action/walk_away/13
execute if entity @s[scores={action=1301..1400}] run function glarth:mechanic/action/walk_away/14
execute if entity @s[scores={action=1401..1500}] run function glarth:mechanic/action/walk_away/15
execute if entity @s[scores={action=1501..1600}] run function glarth:mechanic/action/walk_away/16
execute if entity @s[scores={action=1601..1700}] run function glarth:mechanic/action/walk_away/17
execute if entity @s[scores={action=1701..1800}] run function glarth:mechanic/action/walk_away/18
execute if entity @s[scores={action=1801..1900}] run function glarth:mechanic/action/walk_away/19
execute if entity @s[scores={action=1901..2000}] run function glarth:mechanic/action/walk_away/20
execute if entity @s[scores={action=2001..2100}] run function glarth:mechanic/action/walk_away/21
execute if entity @s[scores={action=2101..2200}] run function glarth:mechanic/action/walk_away/22
execute if entity @s[scores={action=2201..2300}] run function glarth:mechanic/action/walk_away/23
execute if entity @s[scores={action=2301..2400},tag=ggRL] run function glarth:mechanic/action/walk_away/24
execute if entity @s[scores={action=2301..2400},tag=ggML] run function glarth:mechanic/action/walk_away/24b
execute if entity @s[scores={action=2401..2500},tag=ggRL] run function glarth:mechanic/action/walk_away/25
execute if entity @s[scores={action=2401..2500},tag=ggML] run function glarth:mechanic/action/walk_away/25b

tag @s[scores={action=2400..2499}] remove walk_awayX
tag @s[scores={action=2400..2499}] add walk_away
tag @s[scores={action=2400..2499}] remove b
tag @s[scores={action=2400..2499}] remove cnoc
tag @s[scores={action=2500}] add cnoc
tag @s[scores={action=2500}] add b
tag @s[scores={action=2500}] remove walk_away
tag @s[scores={action=2500}] add walk_awayX
execute as @s[scores={action=2500}] at @s as @e[type=minecraft:shulker,distance=..3] run data merge entity @s {DeathTime:19s,Health:0.0f}

execute if entity @e[tag=graveyard,scores={action=0}] if block -69 27 -210 air run setblock -68 27 -212 lever[face=wall,facing=east,powered=false]
execute if entity @e[tag=graveyard,scores={action=0}] if block -69 27 -210 air run function glarth:mechanic/animation/gates/grave/close_gate


execute as @s[scores={action=1730},tag=openedWest] if block -20 26 -198 air run function glarth:mechanic/animation/gates/city/close_west
execute as @s[scores={action=1730},tag=openedWest] if block -20 26 -198 air run tag @s remove openedWest
execute as @s[scores={action=1740},tag=!openedWest] unless block -20 26 -198 air run function glarth:mechanic/animation/gates/city/open_west
execute as @s[scores={action=1740},tag=!openedWest] unless block -20 26 -198 air run tag @s add openedWest

execute as @s[scores={action=2100},tag=ggRL] run setblock 7 24 -184 minecraft:air
execute as @s[scores={action=2300},tag=ggRL] run setblock 7 24 -184 minecraft:redstone_torch
execute as @s[scores={action=2500},tag=ggRL] run setblock 7 24 -184 minecraft:air