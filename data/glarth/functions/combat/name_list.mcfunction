tag @a remove name_list
tag @a[tag=inTBC,gamemode=adventure] add name_list
data modify block 84 26 -123 Text1 set value '""'
execute if entity @e[tag=tbcAlly] run data modify block 84 26 -123 Text1 set value '["",{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly,limit=1]","interpret":true},{"text":", "}]'
execute as @r[tag=name_list] run function glarth:combat/name_list_rec