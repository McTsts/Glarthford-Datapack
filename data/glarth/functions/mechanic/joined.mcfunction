execute unless entity @a[scores={string.simplifyp=0}] run function application_name:call
execute if entity @a[scores={string.simplifyp=0}] run schedule function glarth:mechanic/join_delay 5t
tag @s remove capeChecked
scoreboard players reset @s tbcSeed

schedule function glarth:mechanic/check/call 100t

execute if score game Stats matches 0 run schedule function glarth:sign/combat/change 20t
bossbar set minecraft:rp players @a

function glarth:mechanic/admap/reset

tag @s[gamemode=spectator] remove tbcAttackable

execute if score game Stats matches 0 run function glarth:mechanic/lobby/change
