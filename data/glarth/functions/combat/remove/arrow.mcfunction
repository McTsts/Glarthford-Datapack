function glarth:combat/remove/set
data modify storage glarth:main invget.in set value {id:"minecraft:arrow"}
execute if data storage glarth:main invget.in run function glarth:inventory/get
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
function glarth:inventory/remove
function glarth:combat/remove/get
scoreboard players remove @s tbcArrow 1