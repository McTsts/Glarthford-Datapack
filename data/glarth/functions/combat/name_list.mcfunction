tag @a remove name_list
tag @a[tag=inTBC,gamemode=adventure] add name_list
data modify block 84 26 -123 Text1 set value '""'
execute if entity @e[tag=tbcAlly1] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly1,limit=1]","interpret":true},{"text":", "}]'
execute if entity @e[tag=tbcAlly2] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly2,limit=1]","interpret":true},{"text":", "}]'
execute if entity @e[tag=tbcAlly3] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly3,limit=1]","interpret":true},{"text":", "}]'
execute if entity @e[tag=tbcAlly4] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly4,limit=1]","interpret":true},{"text":", "}]'
execute if entity @e[tag=tbcAlly5] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly5,limit=1]","interpret":true},{"text":", "}]'
execute if entity @e[tag=tbcAlly6] run data modify block 84 26 -123 Text1 set value '[{"nbt":"Text1","block":"84 26 -123","interpret":true},{"nbt":"ArmorItems[0].tag.NoColor","entity":"@e[tag=tbcAlly6,limit=1]","interpret":true},{"text":", "}]'
execute as @r[tag=name_list] run function glarth:combat/name_list_rec