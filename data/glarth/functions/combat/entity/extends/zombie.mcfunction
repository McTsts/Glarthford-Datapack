function glarth:combat/entity/extends/enemy
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.default","color":"dark_green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:68}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.default\",\"color\":\"dark_green\"}"}

scoreboard players set @s attack_001 1
scoreboard players set @s attack_002 1
scoreboard players set @s attack_003 1
scoreboard players set @s attack_006 1
scoreboard players set @s attack_012 1