function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data merge block 160 24 -102 {front_text:{messages:['{"translate":"lobby.options.graphics","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/quality"}}','[{"text":"• ","bold":true,"color":"green"},{"translate":"lobby.options.graphics.default","color":"green","bold":true},{"text":" •","bold":true,"color":"green"}]','[{"translate":"lobby.options.graphics.low","color":"black"}]','""']}}
execute if score @s signRay matches 1..2 run scoreboard players set lowGraphics Stats 0
execute if score @s signRay matches 1..2 run function glarth:sign/graphics/change
execute if score @s signRay matches 3..4 run data merge block 160 24 -102 {front_text:{messages:['{"translate":"lobby.options.graphics","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/quality"}}','[{"translate":"lobby.options.graphics.default","color":"black"}]','[{"text":"• ","bold":true,"color":"red"},{"translate":"lobby.options.graphics.low","color":"red","bold":true},{"text":" •","bold":true,"color":"red"}]','""']}}
execute if score @s signRay matches 3..4 run scoreboard players set lowGraphics Stats 1
execute if score @s signRay matches 3..4 run function glarth:sign/graphics/change