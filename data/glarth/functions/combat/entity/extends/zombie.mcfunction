function glarth:combat/entity/extends/enemy
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.default","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":68}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.default","color":"dark_green"}'}

scoreboard players set @s attack_001 1
scoreboard players set @s attack_002 1
scoreboard players set @s attack_003 1
scoreboard players set @s attack_006 1
scoreboard players set @s attack_012 1