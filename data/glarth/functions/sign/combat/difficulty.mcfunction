function glarth:sign/ray_init
execute if score @s signRay matches 1 run data merge block 161 24 -95 {front_text:{messages:['[{"text":"•  ","color":"#3333FF","bold":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/combat/difficulty"}},{"translate":"lobby.options.combat.difficulty.0","bold":true,"color":"#3333FF"},{"text":" •","color":"#3333FF","bold":true}]','{"translate":"lobby.options.combat.difficulty.1","color":"black"}','{"translate":"lobby.options.combat.difficulty.2","color":"black"}','{"translate":"lobby.options.combat.difficulty.3","color":"black"}']}}
execute if score @s signRay matches 1 run difficulty easy
execute if score @s signRay matches 1 run scoreboard players set difficulty Stats 0
execute if score @s signRay matches 1 run function glarth:sign/combat/change
execute if score @s signRay matches 2 run data merge block 161 24 -95 {front_text:{messages:['{"translate":"lobby.options.combat.difficulty.0","color":"black","clickEvent":{"action":"run_command","value":"function glarth:sign/combat/difficulty"}}','[{"text":"• ","color":"#33FF33","bold":true},{"translate":"lobby.options.combat.difficulty.1","color":"#33FF33","bold":true},{"text":" •","color":"#33FF33","bold":true}]','{"translate":"lobby.options.combat.difficulty.2","color":"black"}','{"translate":"lobby.options.combat.difficulty.3","color":"black"}']}}
execute if score @s signRay matches 2 run difficulty easy
execute if score @s signRay matches 2 run scoreboard players set difficulty Stats 1
execute if score @s signRay matches 2 run function glarth:sign/combat/change
execute if score @s signRay matches 3 run data merge block 161 24 -95 {front_text:{messages:['{"translate":"lobby.options.combat.difficulty.0","color":"black","clickEvent":{"action":"run_command","value":"function glarth:sign/combat/difficulty"}}','{"translate":"lobby.options.combat.difficulty.1","color":"black"}','[{"text":"• ","color":"#FFFF33","bold":true},{"translate":"lobby.options.combat.difficulty.2","color":"#FFFF33","bold":true},{"text":" •","color":"#FFFF33","bold":true}]','{"translate":"lobby.options.combat.difficulty.3","color":"black"}']}}
execute if score @s signRay matches 3 run difficulty normal
execute if score @s signRay matches 3 run scoreboard players set difficulty Stats 2
execute if score @s signRay matches 3 run function glarth:sign/combat/change
execute if score @s signRay matches 4 run data merge block 161 24 -95 {front_text:{messages:['{"translate":"lobby.options.combat.difficulty.0","color":"black","clickEvent":{"action":"run_command","value":"function glarth:sign/combat/difficulty"}}','{"translate":"lobby.options.combat.difficulty.1","color":"black"}','{"translate":"lobby.options.combat.difficulty.2","color":"black"}','[{"text":"• ","color":"#FF3333","bold":true},{"translate":"lobby.options.combat.difficulty.3","color":"#FF3333","bold":true},{"text":" •","color":"#FF3333","bold":true}]']}}
execute if score @s signRay matches 4 run difficulty hard
execute if score @s signRay matches 4 run scoreboard players set difficulty Stats 3
execute if score @s signRay matches 4 run function glarth:sign/combat/change