function glarth:combat/remove/set
scoreboard players set @s tbcArmor 0
# Boots
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:leather_boots"}] run scoreboard players add @s tbcArmor 1
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:golden_boots"}] run scoreboard players add @s tbcArmor 1
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:iron_boots"}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:diamond_boots"}] run scoreboard players add @s tbcArmor 3
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:netherite_boots"}] run scoreboard players add @s tbcArmor 4
# Leggings
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:leather_leggings"}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:golden_leggings"}] run scoreboard players add @s tbcArmor 3
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:iron_leggings"}] run scoreboard players add @s tbcArmor 5
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:diamond_leggings"}] run scoreboard players add @s tbcArmor 6
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:netherite_leggings"}] run scoreboard players add @s tbcArmor 7
# Chestplate
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:leather_chestplate"}] run scoreboard players add @s tbcArmor 3
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:golden_chestplate"}] run scoreboard players add @s tbcArmor 5
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:iron_chestplate"}] run scoreboard players add @s tbcArmor 6
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:diamond_chestplate"}] run scoreboard players add @s tbcArmor 8
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:netherite_chestplate"}] run scoreboard players add @s tbcArmor 9
# Head
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:leather_helmet"}] run scoreboard players add @s tbcArmor 1
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:golden_helmet"}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:iron_helmet"}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:chainmail_helmet"}] run scoreboard players add @s tbcArmor 2
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_helmet"}] run scoreboard players add @s tbcArmor 3
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:netherite_helmet"}] run scoreboard players add @s tbcArmor 4
scoreboard players operation @s tbcArmor < 20 Const
#Armor
execute if score @s tbcArmor matches 0 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 1 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 2 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 3 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 4 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 5 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 6 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 7 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 8 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 9 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 10 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:10,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 11 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:11,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 12 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:12,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 13 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:13,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 14 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:14,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 15 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:15,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 16 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:16,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 17 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:17,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 18 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:18,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 19 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:19,Operation:0,UUID:[I;0,63824,0,160426]}]}
execute if score @s tbcArmor matches 20 run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1,Enchantments:[{id:"vanishing_curse",lvl:1},{id:"binding_curse",lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUID:[I;0,63824,0,160426]}]}
#Multiply
scoreboard players operation @s tbcArmor *= 3 Const
scoreboard players operation @s tbcArmor /= 2 Const
