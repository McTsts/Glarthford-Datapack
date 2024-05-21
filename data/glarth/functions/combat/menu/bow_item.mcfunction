execute if score A tbcAttackParamX matches 1 run give @s minecraft:bow[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.bow.default","italic":false,"bold":true},[{"translate":"tbc.attack.msg.name.damage","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]]}',hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 2 run give @s minecraft:bow[damage=384,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.bow.dockmaster","italic":false,"bold":true},[{"translate":"tbc.attack.msg.name.damage","with":[{"translate":"tbc.attack.msg.name.damage.high"}]},{"text":", "},{"translate":"tbc.attack.msg.name.fire","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]]}',hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 3 run give @s minecraft:crossbow[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.bow.crossbow","italic":false,"bold":true},[{"translate":"tbc.attack.msg.name.damage","with":[{"translate":"tbc.attack.msg.name.damage.high"}]}]]}',hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 4 run give @s minecraft:crossbow[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.bow.crossbow_multi","italic":false,"bold":true},[{"translate":"tbc.attack.msg.name.damage","with":[{"translate":"tbc.attack.msg.name.damage.high"}]},{"text":", "},{"translate":"tbc.attack.msg.name.multishot"}]]}',hide_additional_tooltip={}]

function glarth:combat/remove/set
data remove block 84 26 -121 Items
data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 1 run data modify storage glarth:main invget.in set value {id:"minecraft:bow",components:{custom_data:{bow:"default"}}}
execute if score A tbcAttackParamX matches 2 run data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 3 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",components:{custom_data:{bow:"crossbow"}}}
execute if score A tbcAttackParamX matches 4 run data modify storage glarth:main invget.in set value {id:"minecraft:crossbow",components:{custom_data:{bow:"crossbow_multi"}}}
execute if data storage glarth:main invget.in run function glarth:inventory/get2
execute if data storage glarth:main invget.in run data remove storage glarth:main invget.out.components.minecraft:charged_projectiles
execute if data storage glarth:main invget.in run data modify storage glarth:main invget.out.Slot set value 0b
execute if data storage glarth:main invget.in run data modify block 84 26 -121 Items append from storage glarth:main invget.out
execute if data block 84 26 -121 Items[0].components run function glarth:combat/menu/util/put
data remove storage glarth:main invget.in