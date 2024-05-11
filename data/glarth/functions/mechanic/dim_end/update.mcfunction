execute positioned -16 64 -516 if score endCheckpoint Stats matches ..0 if entity @a[distance=..7,gamemode=adventure] run function glarth:mechanic/dim_end/checkpoint/1
execute positioned -48 76 -580 if score endCheckpoint Stats matches ..1 if entity @a[distance=..7,gamemode=adventure] run function glarth:mechanic/dim_end/checkpoint/2
execute positioned -46 81 -710 if score endCheckpoint Stats matches ..2 if entity @a[distance=..7,gamemode=adventure] run function glarth:mechanic/dim_end/checkpoint/3

execute as @e[type=area_effect_cloud,x=7,y=30,z=-196,distance=..1,tag=endSetup] run function glarth:mechanic/dim_end/setup

execute unless entity @e[type=armor_stand,tag=ender_priest,tag=a] run kill @e[tag=forcefield]

execute as @a[gamemode=adventure] store result score @s eZ run data get entity @s Pos[2]
execute as @a[gamemode=adventure] store result score @s eY run data get entity @s Pos[1]
execute as @a[gamemode=adventure] unless entity @e[type=armor_stand,tag=ender_priest,tag=c] if score @s eZ matches ..-643 if score @s eY matches 89.. run function glarth:mechanic/dim_end/end_void_elytra
execute as @a[gamemode=adventure] unless entity @e[type=armor_stand,tag=ender_priest,tag=d] if score @s eZ matches ..-658 if score @s eY matches 84.. run function glarth:mechanic/dim_end/end_void_elytra
execute as @a[gamemode=adventure] unless entity @e[type=armor_stand,tag=ender_priest,tag=e] if score @s eZ matches ..-677 if score @s eY matches 82.. run function glarth:mechanic/dim_end/end_void_elytra
execute as @a[gamemode=adventure] unless entity @e[type=armor_stand,tag=ender_priest,tag=f] if score @s eZ matches ..-697 if score @s eY matches 76.. run function glarth:mechanic/dim_end/end_void_elytra
execute as @a[gamemode=adventure] unless entity @e[type=armor_stand,tag=ender_priest,tag=g] if score @s eZ matches ..-726 if score @s eY matches 78.. run function glarth:mechanic/dim_end/end_void_elytra


execute as @e[type=end_crystal,tag=eCrystal1] at @s unless entity @e[type=armor_stand,tag=end_crystal_guardian1,distance=..10] run function glarth:mechanic/dim_end/ec_explode
execute as @e[type=end_crystal,tag=eCrystal2] at @s unless entity @e[type=armor_stand,tag=end_crystal_guardian2,distance=..10] run function glarth:mechanic/dim_end/ec_explode


# checkpoints
execute as @e[type=arrow] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 0 run tp @s 9 62 -515 95 -15
execute as @e[type=arrow] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 1 run tp @s -17.0 65 -512.0 90 -20
execute as @e[type=arrow] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 2 run tp @s -51.0 78 -582.0 -175 -10
execute as @e[type=arrow] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 3 run tp @s -37.0 83 -710.0 170 5

execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if entity @s[nbt={Item:{id:"minecraft:saddle"}}] run kill @s
execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if entity @s[nbt={Item:{id:"minecraft:porkchop"}}] run kill @s
execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 0 run tp @s 9 62 -515 95 -15
execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 1 run tp @s -17.0 65 -512.0 90 -20
execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 2 run tp @s -51.0 78 -582.0 -175 -10
execute as @e[type=item] at @s if block ~ 0 ~ black_concrete positioned ~ 20 ~ if entity @s[distance=..20] if score endCheckpoint Stats matches 3 run tp @s -37.0 83 -710.0 170 5