scoreboard players add @s phanterraAnim 1
execute as @s[scores={phanterraSkull=..5}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:341}}]}
execute as @s[scores={phanterraSkull=5..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:342}}]}
execute as @s[scores={phanterraAnim=21..}] run scoreboard players set @s phanterraAnim 0
scoreboard players add @s phanterraSkull 1
scoreboard players set @s[scores={phanterraSkull=10..}] phanterraSkull 0