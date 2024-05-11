# Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/destroyed
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.end_crystal","color":"light_purple"}'}},{},{},{}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.end_crystal\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_172 1
scoreboard players set @s attack_173 1
scoreboard players set @s attack_057 1

scoreboard players set @s tbcHealth 10
scoreboard players set @s tbcDodge -100
tag @s add death_023
# Spawn
tag @s add tbcEndCrystal
tag @s add tbcEndCrystalShield
function glarth:combat/spawn

execute at @s run summon end_crystal ~ ~0.2 ~ {Invulnerable:1,ShowBottom:0b,Tags:["tbc","tbcActualCrystal"]}