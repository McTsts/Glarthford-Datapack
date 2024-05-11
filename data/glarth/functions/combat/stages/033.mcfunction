tag @s remove stage_033
tag @s add stage_032
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":436}}]}
tag @s remove tbcBlock


tag @s remove tbcImBee
tag @s remove tbcImFreeze
tag @s remove tbcImFire
tag @s add tbcWeakBee
tag @s add tbcWeakFreeze
tag @s add tbcWeakFire

scoreboard players operation @s tbcDodge = tempDodgeVal tbcStats

scoreboard players set @s attack_121 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_155 1

scoreboard players set @s attack_175 0
scoreboard players set @s attack_165 0

tag @s remove tbcNoHealth
tag @s remove death_021