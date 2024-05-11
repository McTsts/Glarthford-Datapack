#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.ender_knight","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:359}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.ender_knight\",\"color\":\"dark_purple\"}"}
scoreboard players set @s attack_119 1
scoreboard players set @s attack_120 1
scoreboard players set @s attack_121 2
scoreboard players set @s attack_154 2
scoreboard players set @s attack_155 2
scoreboard players set @s attack_156 1
scoreboard players set @s attack_128 1
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 500
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 550
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 600
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 650
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 700
#Spawn
tag @s add tbcEnderDodge
tag @s add tbcEnderKnight
function glarth:combat/spawn

