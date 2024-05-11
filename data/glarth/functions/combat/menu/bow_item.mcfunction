execute if score A tbcAttackParamX matches 1 run give @s minecraft:bow{display:{Name:"{\"translate\":\"tbc.attack.msg.name\",\"italic\":false,\"with\":[{\"translate\":\"tbc.attack.bow.default\",\"italic\":false,\"bold\":true},[{\"translate\":\"tbc.attack.msg.name.damage\",\"with\":[{\"translate\":\"tbc.attack.msg.name.damage.average\"}]}]]}"},HideFlags:63}
execute if score A tbcAttackParamX matches 2 run give @s minecraft:bow{Damage:384,Unbreakable:1,display:{Name:"{\"translate\":\"tbc.attack.msg.name\",\"italic\":false,\"with\":[{\"translate\":\"tbc.attack.bow.dockmaster\",\"italic\":false,\"bold\":true},[{\"translate\":\"tbc.attack.msg.name.damage\",\"with\":[{\"translate\":\"tbc.attack.msg.name.damage.high\"}]},{\"text\":\", \"},{\"translate\":\"tbc.attack.msg.name.fire\",\"with\":[{\"translate\":\"tbc.attack.msg.name.damage.average\"}]}]]}"},HideFlags:63}
execute if score A tbcAttackParamX matches 3 run give @s minecraft:crossbow{display:{Name:"{\"translate\":\"tbc.attack.msg.name\",\"italic\":false,\"with\":[{\"translate\":\"tbc.attack.bow.crossbow\",\"italic\":false,\"bold\":true},[{\"translate\":\"tbc.attack.msg.name.damage\",\"with\":[{\"translate\":\"tbc.attack.msg.name.damage.high\"}]}]]}"},HideFlags:63}
execute if score A tbcAttackParamX matches 4 run give @s minecraft:crossbow{display:{Name:"{\"translate\":\"tbc.attack.msg.name\",\"italic\":false,\"with\":[{\"translate\":\"tbc.attack.bow.crossbow_multi\",\"italic\":false,\"bold\":true},[{\"translate\":\"tbc.attack.msg.name.damage\",\"with\":[{\"translate\":\"tbc.attack.msg.name.damage.high\"}]},{\"text\":\", \"},{\"translate\":\"tbc.attack.msg.name.multishot\"}]]}"},HideFlags:63}

function glarth:combat/remove/set
data remove block 84 26 -121 Items
data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:bow",tag:{bow:"default"}}
execute if score A tbcAttackParamX matches 2 run data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",tag:{bow:"crossbow"}}
execute if score A tbcAttackParamX matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",tag:{bow:"crossbow_multi"}}
execute if data storage glarth:main invget.in run function glarth:inventory/get2
execute if data storage glarth:main invget.in run data remove storage glarth:main invget.out.tag.ChargedProjectiles
execute if data storage glarth:main invget.in run data remove storage glarth:main invget.out.tag.Charged
execute if data storage glarth:main invget.in run data modify storage glarth:main invget.out.Slot set value 0b
execute if data storage glarth:main invget.in run data modify block 84 26 -121 Items append from storage glarth:main invget.out
execute if data block 84 26 -121 Items[0].tag run function glarth:combat/menu/util/put
data remove storage glarth:main invget.in