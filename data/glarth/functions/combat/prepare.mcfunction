function glarth:combat/get_arena


gamemode spectator @a[scores={health=..0},gamemode=adventure]
kill @e[tag=tbcLoot]
execute as @a[gamemode=adventure] run function glarth:combat/get_pos
tp @a[gamemode=adventure] 239 30 -138
data modify storage glarth:main combat.comp set value [[],[],[]]
execute as @a[gamemode=adventure] run function glarth:combat/find_companion
effect give @a[gamemode=adventure] blindness 3 0 true
tag @e remove die4
tag @s add die4
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcLoot"]}
clear @a chainmail_leggings
clear @a chainmail_chestplate
tag @a[gamemode=adventure] add func2
gamerule keepInventory true
