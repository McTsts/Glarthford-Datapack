scoreboard players add @s phanterraAnim 1
execute as @s[scores={phanterraAnim=01,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":316}}]}
execute as @s[scores={phanterraAnim=01,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":330}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":317}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":331}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":318}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":332}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":319}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":333}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":320}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":334}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":321}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":335}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":322}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":336}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":323}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":337}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":315}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":329}}]}
function glarth:mechanic/animation/phanterra/bob
execute as @s[scores={phanterraAnim=21..}] run scoreboard players set @s phanterraAnim 0
scoreboard players set r Random 2
function glarth:util/randomish
execute if score n Random matches 1 run scoreboard players add @s phanterraSkull 1
scoreboard players set @s[scores={phanterraSkull=10..}] phanterraSkull 0