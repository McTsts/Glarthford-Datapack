function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/irrelevant
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/no_health
scoreboard players set @s tbcStrength 0
scoreboard players set @s tbcDodge -100
scoreboard players set @s tbcHealth 30
scoreboard players set @s tbcArmor 0
tag @s add tbcBlock

# immune against all
tag @s add tbcImFreeze
tag @s add tbcImPoison
tag @s add tbcImBlindness
tag @s add tbcImBee
tag @s add tbcImStun
tag @s add tbcImFire