scoreboard players add @s phanterraAnim 1
execute as @s[scores={phanterraAnim=01,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:293}}]}
execute as @s[scores={phanterraAnim=01,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:302}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:294}}]}
execute as @s[scores={phanterraAnim=03,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:303}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:295}}]}
execute as @s[scores={phanterraAnim=05,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:304}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:296}}]}
execute as @s[scores={phanterraAnim=07,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:305}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:297}}]}
execute as @s[scores={phanterraAnim=09,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:306}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:298}}]}
execute as @s[scores={phanterraAnim=11,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:307}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:299}}]}
execute as @s[scores={phanterraAnim=13,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:308}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:300}}]}
execute as @s[scores={phanterraAnim=15,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:309}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:292}}]}
execute as @s[scores={phanterraAnim=18,phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:301}}]}
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
scoreboard players set r Random 3
function glarth:util/randomish
execute if score n Random matches 1 run scoreboard players add @s phanterraSkull 1
scoreboard players set @s[scores={phanterraSkull=10..}] phanterraSkull 0