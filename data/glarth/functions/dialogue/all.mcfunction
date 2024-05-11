data modify storage glarth:main armor1 set from entity @s ArmorItems[1]
data modify storage glarth:main armor2 set from entity @s ArmorItems[2]
execute unless data storage glarth:main armor1{id:"chainmail_leggings"} unless data storage glarth:main armor1{id:"minecraft:chainmail_leggings"} at @s run function glarth:dialogue/restore_leggings 
execute unless data storage glarth:main armor2{id:"chainmail_chestplate"} unless data storage glarth:main armor2{id:"minecraft:chainmail_chestplate"} at @s run function glarth:dialogue/restore_chestplate
item replace entity @s armor.legs with chainmail_leggings{display:{LocName:"empty"}} 1
item replace entity @s armor.chest with chainmail_chestplate{display:{LocName:"empty"}} 1
