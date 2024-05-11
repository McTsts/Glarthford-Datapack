scoreboard players set r Random 1000
function glarth:util/randomish
execute if score n Random matches 50 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 51 at @s rotated ~ 0 positioned ^-20 ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 52 at @s rotated ~ 0 positioned ^20 ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 53 at @s rotated ~45 0 positioned ^ ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 54 at @s rotated ~-45 0 positioned ^ ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 55 at @s rotated ~ 0 positioned ^ ^ ^20 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~ ~-10 ~20 unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~ ~-10 ~-20 unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~-20 ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^50 positioned ~20 ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^-50 positioned ~ ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^-50 positioned ~ ~-10 ~20 unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^-50 positioned ~ ~-10 ~-20 unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^-50 positioned ~-20 ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score n Random matches 70 at @s rotated ~ 0 positioned ^ ^ ^-50 positioned ~20 ~-10 ~ unless entity @e[type=villager,distance=..15] run summon minecraft:lightning_bolt
execute if score @s ghostUp matches 1.. run scoreboard players set n Random 0
execute if score n Random matches 1 at @s rotated ~ 0 positioned ^ ^ ^20 positioned ~ ~-3 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["ghost_up","ghost_upNew"],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:194}}],Invulnerable:1,Fire:1000s}
execute if score n Random matches 2 at @s rotated ~ 0 positioned ^ ^ ^20 positioned ~ ~-3 ~ run summon minecraft:armor_stand ~ ~ ~ {Tags:["ghost_up","ghost_upNew"],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:195}}],Invulnerable:1,Fire:1000s}
execute if score n Random matches 1..2 at @e[tag=ghost_upNew,type=armor_stand,limit=1] run tp @e[tag=ghost_upNew,type=armor_stand,limit=1,sort=nearest] ~ ~ ~ facing entity @s
execute if score n Random matches 1..2 run tag @e[tag=ghost_upNew,type=armor_stand,limit=1] remove ghost_upNew
execute if score n Random matches 1..2 run scoreboard players set @s ghostUp 100
scoreboard players remove @s[scores={ghostUp=1..}] ghostUp 1