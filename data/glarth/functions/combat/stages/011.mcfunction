scoreboard players set @s tbcArmor 0
tag @s remove stage_011
tag @s add tbcDontShield
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.royal_knight","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":237}}]}