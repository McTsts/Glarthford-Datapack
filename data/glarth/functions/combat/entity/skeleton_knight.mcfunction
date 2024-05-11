#Call Parents
function glarth:combat/entity/extends/skeleton
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.knight","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:176}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.skeleton.knight\",\"color\":\"gray\"}"}
scoreboard players add @s tbcArmor 15
scoreboard players remove @s tbcHealth 20
scoreboard players add @s tbcStrength 10
scoreboard players remove @s tbcDodge 5
scoreboard players set @s attack_011 0
scoreboard players set @s attack_009 0
scoreboard players set @s attack_002 1
scoreboard players set @s attack_006 1
scoreboard players set @s attack_012 1
scoreboard players set @s attack_128 2
#Spawn
tag @s add tbcSkeletonKnight
function glarth:combat/spawn