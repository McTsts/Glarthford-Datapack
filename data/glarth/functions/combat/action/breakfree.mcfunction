execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s tbcMenuX 102
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=45.01..135] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[180f,0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcBreakfree"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=-134.99..-45] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[0f,0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcBreakfree"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=-44.99..45] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[90f,0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcBreakfree"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=135.01..-135] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[-90f,0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcBreakfree"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 as @e[tag=tbcBreakfree] store result entity @s Rotation[0] float 1 run data get entity @e[tag=tbcSelPlayerAS,limit=1] Rotation[0] 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 at @s run function glarth:combat/action/breakfree_item
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set curSlot Temp 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 0 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 1 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 2 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 3 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 4 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 5 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 6 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 7 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set 8 tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players set failed tbcBreakfree 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run scoreboard players operation count tbcBreakfree = attackStrength tbcStats
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action/helper/breakfree_one
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.0 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.1 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.2 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.3 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.4 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.5 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.6 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.7 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run item replace entity @s hotbar.8 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1,display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 0 tbcBreakfree matches 1 run item replace entity @s hotbar.0 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 1 tbcBreakfree matches 1 run item replace entity @s hotbar.1 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 2 tbcBreakfree matches 1 run item replace entity @s hotbar.2 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 3 tbcBreakfree matches 1 run item replace entity @s hotbar.3 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 4 tbcBreakfree matches 1 run item replace entity @s hotbar.4 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 5 tbcBreakfree matches 1 run item replace entity @s hotbar.5 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 6 tbcBreakfree matches 1 run item replace entity @s hotbar.6 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 7 tbcBreakfree matches 1 run item replace entity @s hotbar.7 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 if score 8 tbcBreakfree matches 1 run item replace entity @s hotbar.8 with nether_star{display:{Name:'""'}}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 1 if score 0 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 2 if score 1 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 3 if score 2 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 4 if score 3 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 5 if score 4 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 6 if score 5 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 7 if score 6 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 8 if score 7 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 9 if score 8 tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 1 if score 0 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 1 if score 0 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 1 if score 0 tbcBreakfree matches 1 run item replace entity @s hotbar.0 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 1 if score 0 tbcBreakfree matches 1 run scoreboard players set 0 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 2 if score 1 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 2 if score 1 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 2 if score 1 tbcBreakfree matches 1 run item replace entity @s hotbar.1 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 2 if score 1 tbcBreakfree matches 1 run scoreboard players set 1 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 3 if score 2 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 3 if score 2 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 3 if score 2 tbcBreakfree matches 1 run item replace entity @s hotbar.2 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 3 if score 2 tbcBreakfree matches 1 run scoreboard players set 2 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 4 if score 3 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 4 if score 3 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 4 if score 3 tbcBreakfree matches 1 run item replace entity @s hotbar.3 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 4 if score 3 tbcBreakfree matches 1 run scoreboard players set 3 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 5 if score 4 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 5 if score 4 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 5 if score 4 tbcBreakfree matches 1 run item replace entity @s hotbar.4 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 5 if score 4 tbcBreakfree matches 1 run scoreboard players set 4 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 6 if score 5 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 6 if score 5 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 6 if score 5 tbcBreakfree matches 1 run item replace entity @s hotbar.5 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 6 if score 5 tbcBreakfree matches 1 run scoreboard players set 5 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 7 if score 6 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 7 if score 6 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 7 if score 6 tbcBreakfree matches 1 run item replace entity @s hotbar.6 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 7 if score 6 tbcBreakfree matches 1 run scoreboard players set 6 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 8 if score 7 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 8 if score 7 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 8 if score 7 tbcBreakfree matches 1 run item replace entity @s hotbar.7 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 8 if score 7 tbcBreakfree matches 1 run scoreboard players set 7 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 9 if score 8 tbcBreakfree matches 1 run scoreboard players remove count tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 9 if score 8 tbcBreakfree matches 1 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 9 if score 8 tbcBreakfree matches 1 run item replace entity @s hotbar.8 with minecraft:diamond_hoe{HideFlags:63,Damage:242,Unbreakable:1}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score clicked tbcStats matches 9 if score 8 tbcBreakfree matches 1 run scoreboard players set 8 tbcBreakfree 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 unless score count tbcBreakfree matches 0 run scoreboard players set failed tbcBreakfree 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score failed tbcBreakfree matches 1 run playsound error player @s ~ ~ ~ 1 1.2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score failed tbcBreakfree matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure3"}]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score failed tbcBreakfree matches 1 run scoreboard players set @s tbcAttackTimer 60
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.success3"}]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 if score attackType tbcStats matches 3 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 if score attackType tbcStats matches 3 as @e[tag=tbcSelPlayerAS] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.05 100
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 run scoreboard players set @s tbcCantMove 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 at @e[tag=tbcSelPlayerAS] run data merge entity @e[tag=charQ5,limit=1,sort=nearest] {ArmorItems:[]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 run scoreboard players set @s tbcPumpkin 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 at @e[tag=tbcSelPlayerAS] run data merge entity @e[tag=charQ5,limit=1,sort=nearest] {ArmorItems:[]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1..60 if score count tbcBreakfree matches 0 run scoreboard players set @s tbcAttackTimer 60
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 run scoreboard players set @s tbcMenuX -1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 run function glarth:combat/remove/breakfree
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30 run kill @e[tag=tbcBreakfree]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30 run function glarth:combat/action/util/done