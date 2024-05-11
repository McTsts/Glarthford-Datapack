execute if score A tbcAttackParamX matches 1 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:gold_nugget[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.hand","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.high"}]}]}',damage=0,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 2 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:shears[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.shears","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]}',damage=0,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 3 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:gold_nugget[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.chorus_fruit","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.low"}]}]}',custom_model_data=38,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 4 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:gold_nugget[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.torch","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]}',custom_model_data=41,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 5 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:stone_pickaxe[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.stone_pickaxe","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]}',damage=0,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 6 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:golden_axe[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.golden_pickaxe","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]}',damage=0,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 7 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 0 run give @s minecraft:diamond_pickaxe[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.diamond_pickaxe","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.low"}]}]}',damage=0,hide_additional_tooltip={}]

execute if score A tbcAttackParamX matches 3 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 1 run give @s minecraft:gold_nugget[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.chorus_fruit","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.low"}]}]}',custom_model_data=138,hide_additional_tooltip={}]
execute if score A tbcAttackParamX matches 4 if score @s tbcBreakfree matches 1.. if score tbc0 tbcStats matches 1 run give @s minecraft:gold_nugget[custom_name='{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.breakfree.torch","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.difficulty","with":[{"translate":"tbc.attack.msg.name.damage.average"}]}]}',custom_model_data=141,hide_additional_tooltip={}]

function glarth:combat/remove/set
data remove block 84 26 -121 Items
data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 1 run data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 2 run data modify storage glarth:main invget.in set value {id:"minecraft:shears"}
execute if score A tbcAttackParamX matches 3 run data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 4 run data remove storage glarth:main invget.in
execute if score A tbcAttackParamX matches 5 run data modify storage glarth:main invget.in set value {id:"minecraft:stone_pickaxe"}
execute if score A tbcAttackParamX matches 6 run data modify storage glarth:main invget.in set value {id:"minecraft:golden_axe"}
execute if score A tbcAttackParamX matches 7 run data modify storage glarth:main invget.in set value {id:"minecraft:diamond_pickaxe"}
execute if data storage glarth:main invget.in run function glarth:inventory/get
execute if data storage glarth:main invget.in run data modify storage glarth:main invget.out.Slot set value 0b
execute if data storage glarth:main invget.in run data modify block 84 26 -121 Items append from storage glarth:main invget.out
execute if data block 84 26 -121 Items[0].tag run function glarth:combat/menu/util/put
data remove storage glarth:main invget.in

scoreboard players remove @s tbcBreakfree 1
execute if score @s tbcBreakfree matches 1.. run function glarth:combat/menu/breakfree_item