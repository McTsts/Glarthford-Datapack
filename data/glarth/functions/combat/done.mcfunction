execute as @a[scores={tbcHealth=..0,playerid=1..},gamemode=adventure] run function glarth:combat/die_player
tag @s remove tbcTurn

# update
function glarth:combat/count

# Decreased Blindness
scoreboard players remove @s[tag=tbcEnemy,scores={tbcBlindness=1..}] tbcBlindness 1
# Escape
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] run scoreboard players set r Random 10
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] run function glarth:util/rand_tbc
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] unless entity @s[tag=tbcAllowBF_Blindness] run scoreboard players set n Random 1000
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] unless entity @s[tag=tbcAllowBF_Blindness] run tag @s add tbcAllowBF_Blindness
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] if score n Random <= @s tbcEscape run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.broke_free","with":[{"translate":"tbc.attack.msg.name.blindness2"}]}]
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] if score n Random <= @s tbcEscape at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 20
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] if score n Random <= @s tbcEscape at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.7
execute as @s[tag=tbcEnemy,scores={tbcBlindness=1..}] if score n Random <= @s tbcEscape run scoreboard players operation @s tbcBlindness < 0 Const

# Escape
scoreboard players set r Random 12
function glarth:util/rand_tbc
execute if score n Random <= @s tbcEscape run scoreboard players operation @s tbcFreeze < 1 Const

# Turn Speed Effects
scoreboard players set @s tbcSpeedXX 0
execute if score @s tbcEfSpeed matches 1.. run scoreboard players add @s tbcQueueX 9
execute if score @s tbcEfSpeed matches 1.. run scoreboard players add @s tbcSpeedXX 9
execute if score @s tbcEfSpeed matches 1.. run scoreboard players remove @s tbcEfSpeed 1
execute if score @s tbcEfJump matches 1.. run scoreboard players add @s tbcQueueX 5
execute if score @s tbcEfJump matches 1.. run scoreboard players add @s tbcSpeedXX 5
execute if score @s tbcEfJump matches 1.. run scoreboard players remove @s tbcEfJump 1
scoreboard players set @s tbcEfJ2 0
scoreboard players set @s tbcEfS2 0

scoreboard players set @s[type=!player] tbcAttack 0
scoreboard players set @s tbcQueue 0
scoreboard players operation @s tbcQueue += @s tbcQueueX
scoreboard players set @s tbcQueueX 0
function glarth:combat/done_tags
function glarth:combat/peffect/clear
scoreboard players set @a tbcMenu -1
scoreboard players set @a tbcMenuX -1
scoreboard players set @e[scores={tbcSel=2..}] tbcSel 0
execute as @e[tag=inTBC,type=!player] run function glarth:combat/set_loc

# Irrelevant
execute as @e[tag=tbcIrrelevant] unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant] run tag @s add stage_004
execute as @e[tag=tbcIrrelevant] unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant] run scoreboard players set @s tbcSpeed 100
execute as @e[tag=tbcIrrelevant] unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant] run scoreboard players set @s tbcQueue 100

function glarth:combat/next


