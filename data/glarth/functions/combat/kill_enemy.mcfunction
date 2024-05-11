execute if score TBC Stats matches 1 if entity @s[tag=!tbcBlock,tag=!tbcInvisibleDeath,tag=!tbcDestroyDeath] run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death2","with":[[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}]]}]
execute if score TBC Stats matches 1 if entity @s[tag=!tbcBlock,tag=!tbcInvisibleDeath,tag=tbcDestroyDeath] run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death3","with":[[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}]]}]
execute if score TBC Stats matches 1 if entity @s[tag=tbcBlock,tag=!tbcInvisibleDeath] run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death3","with":[[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"nbt":"CustomName","entity":"@s[type=!player]","interpret":true}]]}]
execute if score @s tbcSel matches 1.. at @s if entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run tag @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable,distance=0.1..] add rand_sel
execute if score @s tbcSel matches 1.. at @s if entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run function glarth:util/rand_sel/1
execute if score @s tbcSel matches 1.. at @s if entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1
execute if score @s tbcSel matches 1.. at @s unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run tag @e[tag=tbcEnemy,tag=!tbcUnselectable,distance=0.1..] add rand_sel
execute if score @s tbcSel matches 1.. at @s unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run function glarth:util/rand_sel/1
execute if score @s tbcSel matches 1.. at @s unless entity @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] run scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1
scoreboard players set @s tbcSel 0
execute at @s unless entity @e[tag=tbcEnemy,distance=0.1..] run kill @e[tag=tbcSelector]
function glarth:combat/selection
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.1 30
execute at @s run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 5
execute as @s[tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] at @s positioned ~ ~1.7 ~ run kill @e[tag=tbcHealthBar,distance=..0.1,limit=1]
execute as @s[tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] at @s positioned ~ ~1.4 ~ run kill @e[tag=tbcHealthBar2,distance=..0.1,limit=1]
execute as @s[tag=tbcEnemyTall] at @s positioned ~ ~2.9 ~ run kill @e[tag=tbcHealthBar,distance=..0.1,limit=1]
execute as @s[tag=tbcEnemyTall] at @s positioned ~ ~2.6 ~ run kill @e[tag=tbcHealthBar2,distance=..0.1,limit=1]
execute as @s[tag=tbcEnemyVeryTall] at @s positioned ~ ~4.9 ~ run kill @e[tag=tbcHealthBar,distance=..0.1,limit=1]
execute as @s[tag=tbcEnemyVeryTall] at @s positioned ~ ~4.6 ~ run kill @e[tag=tbcHealthBar2,distance=..0.1,limit=1]
execute if entity @s[tag=tbcBoss] at @s unless entity @e[tag=tbcBoss,distance=0.1..] run function glarth:combat/kill_boss
execute if entity @s[tag=tbcMiniBoss] at @s unless entity @e[tag=tbcBoss,distance=0.1..] unless entity @e[tag=tbcMiniBoss,distance=0.1..] run function glarth:combat/kill_miniboss
execute at @s run kill @e[type=armor_stand,tag=charQEp,limit=2,sort=nearest,distance=..2]
execute at @s run kill @e[type=armor_stand,tag=charQE,limit=1,sort=nearest,distance=..2]
execute at @s run kill @e[type=armor_stand,tag=charQEBee,limit=1,sort=nearest,distance=..2]
kill @s[tag=!tbcManualDeath]