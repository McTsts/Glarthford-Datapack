function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data merge block 160 24 -100 {front_text:{messages:['{"translate":"lobby.options.clock","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/clock"}}','[{"text":"• ","bold":true,"color":"green"},{"translate":"lobby.options.enabled","color":"green","bold":true},{"text":" •","bold":true,"color":"green"}]','[{"translate":"lobby.options.disabled","color":"black"}]']}}
execute if score @s signRay matches 1..2 run scoreboard players set noClock Stats 0
execute if score @s signRay matches 1..2 run function glarth:sign/graphics/change
execute if score @s signRay matches 3..4 run data merge block 160 24 -100 {front_text:{messages:['{"translate":"lobby.options.clock","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/clock"}}','[{"translate":"lobby.options.enabled","color":"black"}]','[{"text":"• ","bold":true,"color":"red"},{"translate":"lobby.options.disabled","color":"red","bold":true},{"text":" •","bold":true,"color":"red"}]']}}
execute if score @s signRay matches 3..4 run scoreboard players set noClock Stats 1
execute if score @s signRay matches 3..4 run function glarth:sign/graphics/change