#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.hexed","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:163}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.hexed\",\"color\":\"green\"}"}
scoreboard players set @s tbcArmor 0
scoreboard players set @s tbcDodge 0
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcStrength 20
execute if score difficulty tbcStats matches 4 run scoreboard players add @s tbcStrength 25
execute if score difficulty tbcStats matches 5 run scoreboard players add @s tbcStrength 30
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcStrength 35
scoreboard players set @s attack_041 2
scoreboard players set @s attack_031 2
scoreboard players set @s attack_030 2
scoreboard players set @s attack_008 2
scoreboard players set @s attack_016 2
scoreboard players set @s attack_019 2
scoreboard players set @s attack_139 1

#Spawn
tag @s add tbcZombieHexed
function glarth:combat/spawn
