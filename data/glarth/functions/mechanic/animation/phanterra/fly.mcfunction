scoreboard players add @s phanterraAnim 1
execute as @s[scores={phanterraAnim=01,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:316}}]}
execute as @s[scores={phanterraAnim=01,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:330}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:317}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:331}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:318}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:332}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:319}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:333}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:320}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:334}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:321}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:335}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:322}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:336}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:323}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:337}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:315}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:329}}]}
execute as @s[scores={phanterraAnim=01..02}] run tp @s ~ ~0.0725 ~
execute as @s[scores={phanterraAnim=01..02}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.0725 ~
execute as @s[scores={phanterraAnim=03..07}] run tp @s ~ ~0.055 ~
execute as @s[scores={phanterraAnim=03..07}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.055 ~
execute as @s[scores={phanterraAnim=08}] run tp @s ~ ~0.040 ~
execute as @s[scores={phanterraAnim=08}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.040 ~
execute as @s[scores={phanterraAnim=09}] run tp @s ~ ~0.025 ~
execute as @s[scores={phanterraAnim=09}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.025 ~
execute as @s[scores={phanterraAnim=10}] run tp @s ~ ~0.015 ~
execute as @s[scores={phanterraAnim=10}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.015 ~
execute as @s[scores={phanterraAnim=11..20}] run tp @s ~ ~-0.0454 ~
execute as @s[scores={phanterraAnim=11..20}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~-0.0454 ~
execute as @s[scores={phanterraAnim=21}] run tp @s ~ ~-0.0460 ~
execute as @s[scores={phanterraAnim=21}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~-0.0460 ~
execute as @s[scores={phanterraAnim=21..}] run scoreboard players set @s phanterraAnim 0
execute as @s[scores={phanterraAnim=1}] run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~ 2 1
scoreboard players set r Random 2
function glarth:util/randomish
execute if score n Random matches 1 run scoreboard players add @s phanterraSkull 1
scoreboard players set @s[scores={phanterraSkull=10..}] phanterraSkull 0