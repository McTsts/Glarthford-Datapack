scoreboard players operation epHealth Temp -= damage tbcStats
scoreboard players operation @e[tag=tbcEnderPriestTiny] tbcHealth = epHealth Temp

execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s remove tbcEnemy1
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s remove tbcEnemy2
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s remove tbcEnemy3

execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s add tbcInvisibleDeath
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s add tbcManualDeath
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @s remove tbcBoss
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run function glarth:combat/kill_enemy

execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run function glarth:combat/init_tbc/enemy1
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/ender_priest2
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] as @e[tag=tbcEnemy1,type=armor_stand] run item replace entity @s armor.head with diamond_hoe{CustomModelData:468}
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players operation @e[tag=tbcEnderPriest2] tbcHealth = epHealth Temp
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players set @e[tag=tbcEnderPriest2] tbcSel 1
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_035
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_036
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_037
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_038
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_039
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_040
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_041
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_042
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_043
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_044
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove stage_045
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run tag @e[tag=tbcEnderPriest2] remove tbcEnderMorphed
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] as @e[tag=tbcEnderPriest2] run function glarth:combat/remove_all
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players set @e[tag=tbcEnderPriest2] attack_182 2
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players set @e[tag=tbcEnderPriest2] attack_049 2
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run scoreboard players set @e[tag=tbcEnderPriest2] attack_054 2
execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run function glarth:combat/selection

execute at @s unless entity @e[tag=tbcEnderPriestTiny,distance=0.1..] run kill @s