scoreboard players add @s phanterraAnim 1
execute as @s[scores={phanterraAnim=01}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:310}}]}
execute as @s[scores={phanterraAnim=03}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:311}}]}
execute as @s[scores={phanterraAnim=05}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:312}}]}
execute as @s[scores={phanterraAnim=07}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:313}}]}
execute as @s[scores={phanterraAnim=09}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:314}}]}
execute as @s[scores={phanterraAnim=01..02}] run tp @s ~ ~0.0725 ~ ~ ~2.5
execute as @s[scores={phanterraAnim=01..02}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.0725 ~ ~ ~
execute as @s[scores={phanterraAnim=03..07}] run tp @s ~ ~0.055 ~ ~ ~2.5
execute as @s[scores={phanterraAnim=03..07}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.055 ~ ~ ~
execute as @s[scores={phanterraAnim=08}] run tp @s ~ ~0.040 ~ ~ ~2.5
execute as @s[scores={phanterraAnim=08}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.040 ~ ~ ~
execute as @s[scores={phanterraAnim=09}] run tp @s ~ ~0.025 ~ ~ ~2.5
execute as @s[scores={phanterraAnim=09}] as @e[tag=tbcMarkerPhanterra] at @s run tp @s ~ ~0.025 ~ ~ ~
execute as @s[scores={phanterraAnim=10}] run function glarth:mechanic/animation/phanterra/straighten_to_fly