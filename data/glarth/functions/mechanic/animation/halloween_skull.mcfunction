scoreboard players set r Random 50
function glarth:util/randomish
execute if score @s hEntity matches 1.. run scoreboard players set n Random 0
execute if score n Random matches 1 at @s run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 1 0.5
execute if score n Random matches 1 at @s run particle minecraft:spit ~ ~1.5 ~ 0.2 0.2 0.2 0 1
execute if score n Random matches 1 at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure]
execute if score n Random matches 1 at @s run scoreboard players set @s hEntity 200
scoreboard players remove @s[scores={hEntity=1..}] hEntity 1