function glarth:combat/entity/extends/enemy
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.spider.default","color":"dark_gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":351}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.spider.default","color":"dark_gray"}'}

scoreboard players remove @s tbcHealth 50
scoreboard players operation @s tbcHealth > 1 Const
scoreboard players add @s tbcSpeed 4
scoreboard players set @s tbcArmor 0
scoreboard players set @s tbcDodge 30

scoreboard players set @s attack_002 1
scoreboard players set @s attack_007 1
scoreboard players set @s attack_200 2
