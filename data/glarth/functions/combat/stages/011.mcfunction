scoreboard players set @s tbcArmor 0
tag @s remove stage_011
tag @s add tbcDontShield
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.royal_knight","color":"gold"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:237}}]}