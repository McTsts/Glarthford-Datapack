execute if entity @s[tag=!tbcChargedCreeper,tag=!tbcCreeper,tag=!tbcFlashStored] run function glarth:combat/action_enemy/stages/flash/internal/store
data modify entity @s ArmorItems[3] set value {id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":46}}