# Peaceful
execute if score difficulty Stats matches 0 run function glarth:mechanic/do_win
execute if score difficulty Stats matches 0 run kill @s
execute if score difficulty Stats matches 0 run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Silent:1b,Invulnerable:1,Tags:["char","die","cnoc"]}
# Check Weapon
execute if score combat Stats matches 0 if score difficulty Stats matches 1.. as @a[nbt=!{Inventory:[{id:"minecraft:iron_shovel"}]},gamemode=adventure] as @s[nbt=!{Inventory:[{id:"minecraft:stone_sword"}]}] as @s[nbt=!{Inventory:[{id:"minecraft:stone_pickaxe"}]}] run tag @s add tbcTutNoWeapon
execute if score combat Stats matches 0 if score difficulty Stats matches 1.. as @a[nbt=!{Inventory:[{id:"minecraft:iron_shovel"}]},gamemode=adventure] as @s[nbt=!{Inventory:[{id:"minecraft:stone_sword"}]}] as @s[nbt=!{Inventory:[{id:"minecraft:stone_pickaxe"}]}] run give @s stone_pickaxe
execute if score combat Stats matches 0 if score difficulty Stats matches 1.. as @a[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",tag:{CustomModelData:141}}]},gamemode=adventure] run function glarth:mechanic/staff/get_old
# PVE
execute if score combat Stats matches 1 if score difficulty Stats matches 1..3 run function glarth:combat/init_pve/boss/bat
# TBC
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1 run schedule function glarth:combat/init_tbc/boss/bat 20
execute if score combat Stats matches 0 if score difficulty Stats matches 2 run schedule function glarth:combat/init_tbc/boss/bat 20
execute if score combat Stats matches 0 if score difficulty Stats matches 3 run schedule function glarth:combat/init_tbc/boss/bat 20
# Other
scoreboard players set @a suffixB0 1
