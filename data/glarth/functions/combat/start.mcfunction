function glarth:combat/name_list
tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"red"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.start","color":"red","with":[{"block":"84 26 -123","nbt":"Text1","interpret":true,"color":"red"},{"selector":"@e[tag=tbcEnemy]","color":"red"}]}]
function glarth:combat/entity/player
execute as @e[tag=tbcEnemy] run function glarth:combat/set_loc
execute as @e[tag=tbcPlayerAS] run function glarth:combat/set_loc
kill @s[type=!player]
effect clear @a minecraft:nausea

scoreboard players set @e[tag=tbcEnemy] tbcSel 0
tag @e[tag=tbcEnemy,tag=!tbcIrrelevant,tag=!tbcUnselectable] add rand_sel
function glarth:util/rand_sel/1
scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1
function glarth:combat/selection

schedule function glarth:combat/head_setup 20

execute if score compPos tbcStats matches 0 as @e[tag=tbcMarkerPos1,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB1"]}
execute if score compPos tbcStats matches 0 as @e[tag=tbcMarkerPos2,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB2"]}
execute if score compPos tbcStats matches 0 as @e[tag=tbcMarkerPos3,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB3"]}

execute if score compPos tbcStats matches 1 as @e[tag=tbcMarkerPos1,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^1 ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB1"]}
execute if score compPos tbcStats matches 1 as @e[tag=tbcMarkerPos2,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^1 ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB2"]}
execute if score compPos tbcStats matches 1 as @e[tag=tbcMarkerPos3,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^1 ^ ^-1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompB","tbcMarkerCompB3"]}


execute as @e[tag=tbcMarkerPos1,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompF","tbcMarkerCompF1"]}
execute as @e[tag=tbcMarkerPos2,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompF","tbcMarkerCompF2"]}
execute as @e[tag=tbcMarkerPos3,type=area_effect_cloud] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^1.75 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerCompF","tbcMarkerCompF3"]}

execute as @a[tag=inTBC,gamemode=adventure] run function glarth:combat/first_companion 


execute as @a[tag=inTBC] at @s facing entity @e[tag=tbcMarkerMiddle] eyes run tp @s ~ ~ ~ ~ ~

execute unless score game Stats matches 1 if score lobbyTBC Stats matches 0 run function glarth:combat/flee

