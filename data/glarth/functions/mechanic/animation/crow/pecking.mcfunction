#/scoreboard players set 20 Const 20
scoreboard players remove @s crow 1
scoreboard players operation @s Temp = @s crow
scoreboard players operation @s Temp %= 20 Const

data merge entity @s[scores={Temp=0}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":158}}]}
data merge entity @s[scores={Temp=3}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":160}}]}
data merge entity @s[scores={Temp=6}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":161}}]}
data merge entity @s[scores={Temp=9}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":160}}]}
data merge entity @s[scores={Temp=12}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":161}}]}
data merge entity @s[scores={Temp=15}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":160}}]}
data merge entity @s[scores={Temp=18}] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":158}}]}