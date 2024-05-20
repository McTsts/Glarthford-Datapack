tag @s add name_listX
data modify block 84 26 -123 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"84 26 -123","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@p[tag=name_listX]","interpret":true}]'
tag @s remove name_list
tag @s remove name_listX
execute if entity @a[tag=name_list] run data modify block 84 26 -123 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"84 26 -123","interpret":true},{"text":", "}]'
execute as @r[tag=name_list] run function glarth:combat/name_list_rec