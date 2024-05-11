tag @s add name_listX
data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=name_listX]","interpret":true}]'
tag @s remove name_list
tag @s remove name_listX
execute if entity @a[tag=name_list] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"text":", "}]'
execute as @r[tag=name_list] run function glarth:combat/name_list_rec