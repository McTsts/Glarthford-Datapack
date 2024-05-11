execute if entity @s[tag=tbcEnemy] run function glarth:combat/spawn_enemy
execute if entity @s[tag=tbcCompanion] run function glarth:combat/spawn_companion
execute if entity @s[tag=tbcAlly] run function glarth:combat/spawn_ally
scoreboard players set @s tbcFreeze -1