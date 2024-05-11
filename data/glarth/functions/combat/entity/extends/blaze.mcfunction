#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.blaze","color":"#FF7200"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":205}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.blaze","color":"#FF7200"}'}

scoreboard players set @s attack_014 1
scoreboard players set @s attack_041 1
scoreboard players set @s attack_042 1
scoreboard players set @s attack_043 1
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 100
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 130
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 160
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 180
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 200
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 230

tag @s add tbcBlaze