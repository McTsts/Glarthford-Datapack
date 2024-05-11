execute if data storage glarth:main inv.all[{id:"minecraft:wooden_hoe",tag:{Damage:59}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:stone_pickaxe",tag:{Damage:131}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:stone_shovel",tag:{Damage:131}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:wooden_sword",tag:{Damage:59}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:stone_sword",tag:{Damage:131}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:iron_sword",tag:{Damage:250}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:diamond_sword",tag:{Damage:1561}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:golden_sword",tag:{Damage:32}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:diamond_shovel",tag:{Damage:1561}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:iron_shovel",tag:{Damage:250}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:golden_shovel",tag:{Damage:32}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:golden_pickaxe",tag:{Damage:32}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:shield",tag:{Damage:336}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:golden_axe",tag:{Damage:32}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:shears",tag:{Damage:238}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:netherite_sword",tag:{Damage:2031}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:diamond_pickaxe",tag:{Damage:1561}}] run function glarth:combat/remove/damaged_broke

execute if data storage glarth:main inv.all[{id:"minecraft:bow",tag:{Damage:384,bow:"default"}}] if score @p[tag=tbcTurn] tbcAttackStage matches 2 run scoreboard players set @p[tag=tbcTurn] tbcAttackTimer 100
execute if data storage glarth:main inv.all[{id:"minecraft:bow",tag:{Damage:384,bow:"default"}}] run function glarth:combat/remove/damaged_broke
execute if data storage glarth:main inv.all[{id:"minecraft:crossbow",tag:{Damage:326}}] if score @p[tag=tbcTurn] tbcAttackStage matches 2 run scoreboard players set @p[tag=tbcTurn] tbcAttackTimer 100
execute if data storage glarth:main inv.all[{id:"minecraft:crossbow",tag:{Damage:326}}] run function glarth:combat/remove/damaged_broke

data remove storage glarth:main inv.all[{id:"minecraft:wooden_hoe",tag:{Damage:59}}]
data remove storage glarth:main inv.all[{id:"minecraft:stone_pickaxe",tag:{Damage:131}}]
data remove storage glarth:main inv.all[{id:"minecraft:stone_shovel",tag:{Damage:131}}]
data remove storage glarth:main inv.all[{id:"minecraft:wooden_sword",tag:{Damage:59}}]
data remove storage glarth:main inv.all[{id:"minecraft:stone_sword",tag:{Damage:131}}]
data remove storage glarth:main inv.all[{id:"minecraft:iron_sword",tag:{Damage:250}}]
data remove storage glarth:main inv.all[{id:"minecraft:diamond_sword",tag:{Damage:1561}}]
data remove storage glarth:main inv.all[{id:"minecraft:golden_sword",tag:{Damage:32}}]
data remove storage glarth:main inv.all[{id:"minecraft:diamond_shovel",tag:{Damage:1561}}]
data remove storage glarth:main inv.all[{id:"minecraft:iron_shovel",tag:{Damage:250}}]
data remove storage glarth:main inv.all[{id:"minecraft:golden_shovel",tag:{Damage:32}}]
data remove storage glarth:main inv.all[{id:"minecraft:golden_pickaxe",tag:{Damage:32}}]
data remove storage glarth:main inv.all[{id:"minecraft:bow",tag:{Damage:384,bow:"default"}}]
data remove storage glarth:main inv.all[{id:"minecraft:shield",tag:{Damage:336}}]
data remove storage glarth:main inv.all[{id:"minecraft:crossbow",tag:{Damage:326}}]
data remove storage glarth:main inv.all[{id:"minecraft:golden_axe",tag:{Damage:32}}]
data remove storage glarth:main inv.all[{id:"minecraft:shears",tag:{Damage:238}}]
data remove storage glarth:main inv.all[{id:"minecraft:netherite_sword",tag:{Damage:2031}}]
data remove storage glarth:main inv.all[{id:"minecraft:diamond_pickaxe",tag:{Damage:1561}}]