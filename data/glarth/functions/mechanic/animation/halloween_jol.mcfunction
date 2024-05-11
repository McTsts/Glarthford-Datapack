scoreboard players set r Random 200
function glarth:util/randomish
execute if score n Random matches 1 run fill ~ ~1.425 ~ ~ ~1.425 ~ lantern[hanging=false] replace air
execute if score n Random matches 1 run tp @s ~ ~ ~ facing entity @p
execute if score n Random matches 1 run data merge entity @s[tag=!is_halloween_jol] {ArmorItems:[{},{},{},{id:"jack_o_lantern",Count:1}]}
execute if score n Random matches 1 run tag @s add is_halloween_jol

execute if score n Random matches 100..200 run fill ~ ~1.425 ~ ~ ~1.425 ~ air replace lantern[hanging=false]
execute if score n Random matches 100..200 run data merge entity @s[tag=is_halloween_jol] {ArmorItems:[{},{},{},{id:"carved_pumpkin",Count:1}]}
execute if score n Random matches 100..200 run tag @s remove is_halloween_jol