# General
execute unless entity @s[gamemode=!adventure] run tellraw @a [""]
execute if entity @s[type=player] unless entity @s[gamemode=!adventure] run tellraw @a[gamemode=!adventure] ["",{"translate":"tbc","bold":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.turn.other","color":"gray","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}]}]
execute if entity @s[type=player] unless entity @s[gamemode=!adventure] run tellraw @a[distance=0.1..,gamemode=adventure] ["",{"translate":"tbc","bold":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.turn.other","color":"gray","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}]}]
execute if entity @s[type=!player] run tellraw @a ["",{"translate":"tbc","bold":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.turn.other","color":"gray","with":[{"nbt":"CustomName","entity":"@s","interpret":true}]}]
scoreboard players set @s tbcAttack 0
scoreboard players set @s tbcAttackTimer 0
scoreboard players set @s tbcAttackStage 0

# Player Turn Message
execute unless entity @s[gamemode=!adventure] run tellraw @s ["",{"translate":"tbc","bold":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.turn.self","color":"gray","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}]}]

# Fix Selection
execute if entity @e[tag=tbcEnemy,scores={tbcSel=1},tag=tbcUnselectable] run function glarth:combat/fix_selection


# Negative Effect Immunities
execute if entity @s[tag=tbcImFire] run scoreboard players set @s tbcFire 0
execute if entity @s[tag=tbcImPoison] run scoreboard players set @s tbcPoison 0
execute if entity @s[tag=tbcImInfection] run scoreboard players set @s tbcInfection 0
execute if entity @s[tag=tbcImBee] run scoreboard players set @s tbcBee 0
execute if entity @s[tag=tbcImBlindness] run scoreboard players set @s tbcBlindness 0

# Stun Immunities
execute if entity @s[tag=tbcImFreeze] run scoreboard players set @s tbcFreeze 0
execute if entity @s[tag=tbcImStun] run scoreboard players set @s tbcStun 0

# Negative Normal Effects
execute if score @s[tag=tbcTurn] tbcPoison matches 1.. run function glarth:combat/effect/poison
execute if score @s[tag=tbcTurn] tbcFire matches 1.. run function glarth:combat/effect/fire
execute if score @s[tag=tbcTurn] tbcInfection matches 1.. run function glarth:combat/effect/infection
execute if score @s[tag=tbcTurn] tbcBee matches 1.. run function glarth:combat/effect/bee
execute if score @s[tag=tbcTurn] tbcBlindness matches 1.. run function glarth:combat/effect/blindness
execute if score @s[tag=tbcTurn] tbcWither matches 1.. run function glarth:combat/effect/wither

# Positive Normal Effects
execute if score @s[tag=tbcTurn] tbcRegeneration matches 1.. run function glarth:combat/effect/regeneration

# Kill if Dead
execute as @a[scores={tbcHealth=..0,playerid=1..},gamemode=adventure] run function glarth:combat/die_player
schedule function glarth:combat/die_check_delayed 10

execute as @s[scores={tbcHealth=..0},tag=tbcEnemy] run function glarth:combat/die_enemy
execute as @s[scores={tbcHealth=..0},tag=tbcAlly] run function glarth:combat/die_ally

# Type Based
execute if entity @s[type=player,scores={tbcHealth=1..},gamemode=adventure] run function glarth:combat/turn_init_player
execute if entity @s[tag=tbcEnemy,scores={tbcHealth=1..}] run function glarth:combat/turn_init_enemy
execute if entity @s[tag=tbcCompanion] run function glarth:combat/turn_init_companion
execute if entity @s[tag=tbcAlly,scores={tbcHealth=1..}] run function glarth:combat/turn_init_ally

# Stunning Effects
execute if score @s[tag=tbcTurn] tbcFreeze matches 0.. run function glarth:combat/effect/freeze
execute if score @s[tag=tbcTurn] tbcStun matches 1.. run function glarth:combat/effect/stun
execute if score @s[tag=tbcTurn] tbcCantMove matches 1.. run function glarth:combat/effect/cant_move

# has to be here bc it needs to know the player as
execute if score @s[tag=tbcTurn] tbcPumpkin matches 1.. run function glarth:combat/effect/pumpkin

## Objects
function glarth:combat/turn_init_objects