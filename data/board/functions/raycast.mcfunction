tag @s add b_current
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["ray"],Particle:"minecraft:block minecraft:air"}
execute as @a[tag=b_current] at @s anchored eyes run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute as @e[tag=ray] at @s run function board:trace
tag @s remove b_current
