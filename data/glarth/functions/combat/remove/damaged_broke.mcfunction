execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1
tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.weapon_breaks"}]
execute as @e[tag=tbcSelPlayerAS,type=armor_stand] at @s run item replace entity @e[tag=charQ4,sort=nearest,limit=1,type=armor_stand] armor.head with air