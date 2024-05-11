function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.raid_leader","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":287}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.raid_leader","color":"gray"}'}
# Standard Illager Attacks
scoreboard players set @s attack_092 1
scoreboard players set @s attack_093 1
scoreboard players set @s attack_094 1
scoreboard players set @s attack_095 1
scoreboard players set @s attack_096 1
scoreboard players set @s attack_097 1
scoreboard players set @s attack_057 1
scoreboard players set @s attack_019 1
scoreboard players set @s attack_104 1


scoreboard players set @s tbcHealth 10
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6

#Spawn
tag @s add tbcIllager
tag @s add tbcRaidLeaderFake
function glarth:combat/spawn