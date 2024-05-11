function glarth:combat/entity/extends/enemy
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcHealth 20
execute if score difficulty tbcStats matches 4 run scoreboard players add @s tbcHealth 40
execute if score difficulty tbcStats matches 5 run scoreboard players add @s tbcHealth 60
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcHealth 80
execute if score difficulty tbcStats matches 1..2 run scoreboard players set @s tbcStrength 20
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 4..5 run scoreboard players set @s tbcStrength 40
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcStrength 45
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcDodge 5
execute if score difficulty tbcStats matches 4..5 run scoreboard players add @s tbcDodge 7
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcDodge 10
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.default","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:22}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.skeleton.default\",\"color\":\"white\"}"}

scoreboard players set @s attack_008 1
scoreboard players set @s attack_009 1
scoreboard players set @s attack_010 1
scoreboard players set @s attack_011 1
scoreboard players set @s attack_013 1
scoreboard players set @s attack_024 1
