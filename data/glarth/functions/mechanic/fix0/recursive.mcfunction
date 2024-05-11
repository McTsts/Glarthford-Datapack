data modify storage glarth:main inv.all prepend from storage glarth:main inv0[0]
data remove storage glarth:main inv0[0]
execute store result score count Temp run data get storage glarth:main inv.all[0].Count
scoreboard players operation count Temp %= 10 Const
execute if data storage glarth:main inv.all[0].tag.0added unless score count Temp matches 0 run function glarth:mechanic/fix0/unfix
execute unless data storage glarth:main inv.all[0].tag.0added if score count Temp matches 0 run function glarth:mechanic/fix0/fix
execute if data storage glarth:main inv0[0] run function glarth:mechanic/fix0/recursive