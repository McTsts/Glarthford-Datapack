execute if score shipStatus Animation matches 0 if entity @a[x=-10,y=27,z=-135,distance=..1.5,gamemode=adventure] unless entity @e[tag=evShipDestroyed] run function glarth:mechanic/animation/ship/to_block
execute if score shipStatus Animation matches 0 if entity @a[x=-10,y=27,z=-129,distance=..1.5,gamemode=adventure] unless entity @e[tag=evShipDestroyed] run function glarth:mechanic/animation/ship/to_block

execute if score shipStatus Animation matches 1 unless entity @a[x=-10,y=27,z=-129,distance=..25,gamemode=adventure] unless entity @e[tag=evShipDestroyed] run function glarth:mechanic/animation/ship/to_model

execute if score shipStatus Animation matches 0 if score shipStatusModel Animation matches 0 if entity @a[x=-16,y=25,z=-137,dx=24,dy=4,dz=10,gamemode=adventure] unless score quest Stats matches 6 run function glarth:mechanic/animation/ship/model_near
execute if score shipStatus Animation matches 0 if score shipStatusModel Animation matches 1 unless entity @a[x=-16,y=25,z=-137,dx=24,dy=4,dz=10,gamemode=adventure] unless score quest Stats matches 6 run function glarth:mechanic/animation/ship/model_far

execute if entity @a[x=-10,y=27,z=-129,distance=..40,gamemode=adventure] unless score shipFall Animation matches 1 if score shipStatus Animation matches 0 if score shipX Animation matches 1 run function glarth:mechanic/animation/ship/bob
execute if entity @a[x=-10,y=27,z=-129,distance=..40,gamemode=adventure] unless score shipFall Animation matches 1 if score shipStatus Animation matches 0 if score shipX Animation matches 2 run function glarth:mechanic/animation/ship/shift
execute if entity @a[x=-10,y=27,z=-129,distance=..40,gamemode=adventure] unless score shipFall Animation matches 1 if score shipStatus Animation matches 0 if score shipX Animation matches 3 run function glarth:mechanic/animation/ship/shift_wind
execute if entity @a[x=-10,y=27,z=-129,distance=..40,gamemode=adventure] if score shipFall Animation matches 1 if score shipStatus Animation matches 0 run function glarth:mechanic/animation/ship/fall

execute as @e[tag=ship1,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship1,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship2,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship2,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship3,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship3,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship4,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship4,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship5,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship5,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship6,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship6,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship7,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship7,tag=2ship,type=armor_stand] ~ ~4.1125 ~
execute as @e[tag=ship8,tag=!2ship,type=armor_stand] at @s run tp @e[tag=ship8,tag=2ship,type=armor_stand] ~ ~4.1125 ~

# horse
execute if score shipStatus Animation matches 0 positioned -5 28 -132 as @e[type=horse,limit=1,distance=..10] at @s if block ~ ~-1 ~ barrier unless entity @e[tag=evShipDestroyed] run function glarth:mechanic/animation/ship/to_block
execute if score shipStatus Animation matches 0 positioned -5 28 -132 as @a[distance=..10] at @s if block ~ ~-1 ~ barrier unless entity @e[tag=evShipDestroyed] run function glarth:mechanic/animation/ship/to_block