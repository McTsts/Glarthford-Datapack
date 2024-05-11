tellraw @a[distance=..0.5] ""
function glarth:combat/remove/set
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:leather_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.leather_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:golden_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.golden_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.golden_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_hoe",tag:{CustomModelData:275}}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.vindicator_skull","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.dog_skull","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:iron_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.iron_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:chainmail_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.chainmail_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:diamond_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.diamond_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:103b,id:"minecraft:netherite_helmet"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.head","color":"gray","with":[{"translate":"item.minecraft.netherite_helmet","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:leather_chestplate"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.leather_chestplate","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:golden_chestplate"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.golden_chestplate","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:iron_chestplate"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.iron_chestplate","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:diamond_chestplate"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.diamond_chestplate","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:netherite_chestplate"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.netherite_chestplate","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:102b,id:"minecraft:elytra"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.chest","color":"gray","with":[{"translate":"item.minecraft.elytra","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:leather_leggings"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.legs","color":"gray","with":[{"translate":"item.minecraft.leather_leggings","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:golden_leggings"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.legs","color":"gray","with":[{"translate":"item.minecraft.golden_leggings","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:iron_leggings"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.legs","color":"gray","with":[{"translate":"item.minecraft.iron_leggings","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:diamond_leggings"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.legs","color":"gray","with":[{"translate":"item.minecraft.diamond_leggings","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:101b,id:"minecraft:netherite_leggings"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.legs","color":"gray","with":[{"translate":"item.minecraft.netherite_leggings","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:leather_boots"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.feet","color":"gray","with":[{"translate":"item.minecraft.leather_boots","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:golden_boots"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.feet","color":"gray","with":[{"translate":"item.minecraft.golden_boots","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:iron_boots"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.feet","color":"gray","with":[{"translate":"item.minecraft.iron_boots","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:diamond_boots"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.feet","color":"gray","with":[{"translate":"item.minecraft.diamond_boots","italic":true}]}]
execute if data storage glarth:main inv.all[{Slot:100b,id:"minecraft:netherite_boots"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.feet","color":"gray","with":[{"translate":"item.minecraft.netherite_boots","italic":true}]}]
execute unless data storage glarth:main inv.all[{Slot:100b}] unless data storage glarth:main inv.all[{Slot:101b}] unless data storage glarth:main inv.all[{Slot:102b}] unless data storage glarth:main inv.all[{Slot:103b}] run tag @s add temp
execute if entity @s[tag=temp] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.none","color":"gray"}]
# 3 chances for all to appear in n=4..6 [1..30]
execute if entity @s[tag=!temp] run scoreboard players operation tbcChance Temp = @s tbcArmor
execute if entity @s[tag=!temp] run scoreboard players operation tbcChance Temp *= 3 Const
# 1 guarantee for all armor to appear in n=7 [30]
execute if entity @s[tag=!temp] if score @s tbcArmor matches 01.. run scoreboard players add tbcChance Temp 30
# 1 chance for armor to appear in n=1 [1..10]. Multiplied with 3 (added thrice) since range is only to ten (1/3)
execute if entity @s[tag=!temp] if score @s tbcArmor matches 10.. run scoreboard players add tbcChance Temp 30
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..09 run scoreboard players operation tbcChance Temp += @s tbcArmor
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..09 run scoreboard players operation tbcChance Temp += @s tbcArmor
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..09 run scoreboard players operation tbcChance Temp += @s tbcArmor
# 2 chances for armor to appear in n=2..3 [1..20]. Multiplied with 1.5 (added once for each chance, and once for the .5 of both combined) since range is only to twenty (2/3)
execute if entity @s[tag=!temp] if score @s tbcArmor matches 20.. run scoreboard players add tbcChance Temp 60
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..19 run scoreboard players operation tbcChance Temp += @s tbcArmor
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..19 run scoreboard players operation tbcChance Temp += @s tbcArmor
execute if entity @s[tag=!temp] if score @s tbcArmor matches ..19 run scoreboard players operation tbcChance Temp += @s tbcArmor
# To %
execute if entity @s[tag=!temp] run scoreboard players operation tbcChance Temp *= 10 Const
execute if entity @s[tag=!temp] run scoreboard players operation tbcChance Temp /= 7 Const
execute if entity @s[tag=!temp] run scoreboard players operation tbcChance Temp /= 3 Const
execute if entity @s[tag=!temp] store result storage ntca:io in int 1 run scoreboard players get tbcChance Temp
execute if entity @s[tag=!temp] run function ntca:call
execute if entity @s[tag=!temp] if score @s tbcArmor matches 0..10 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.armor","color":"gray","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"},"%",{"text":"±","color":"red"}]}]
execute if entity @s[tag=!temp] if score @s tbcArmor matches 11..16 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.armor","color":"gray","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"},"%",{"text":"1","color":"red"}]}]
execute if entity @s[tag=!temp] if score @s tbcArmor matches 17..22 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.armor","color":"gray","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"},"%",{"text":"2","color":"red"}]}]
execute if entity @s[tag=!temp] if score @s tbcArmor matches 23..28 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.armor","color":"gray","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"},"%",{"text":"3","color":"red"}]}]
execute if entity @s[tag=!temp] if score @s tbcArmor matches 29.. run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wearing.armor","color":"gray","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"},"%",{"text":"4","color":"red"}]}]
execute run tag @s remove temp