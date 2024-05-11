function glarth:combat/remove/set
execute if score attackType tbcStats matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:bow",tag:{bow:"default"}}
execute if score attackType tbcStats matches 2 run data remove storage glarth:main invget.in
execute if score attackType tbcStats matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",tag:{bow:"crossbow"}}
execute if score attackType tbcStats matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",tag:{bow:"crossbow_multi"}}
execute if data storage glarth:main invget.in run function glarth:inventory/get2
execute if data storage glarth:main invget.in run data modify storage glarth:main temp set from storage glarth:main invget.out
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:inventory/damage
execute if data storage glarth:main invget.in if data storage glarth:main temp run function glarth:combat/remove/remove_damaged
function glarth:combat/remove/get