#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/no_anim
function glarth:combat/entity/implements/no_food_speedup
function glarth:combat/entity/implements/type/illusion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'""'}},{},{},{}],CustomNameVisible:1,CustomName:'""'}

execute if score @p[tag=evilPlayer] charType matches 1 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.enemy.evil_player.a","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
execute if score @p[tag=evilPlayer] charType matches 2 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.enemy.evil_player.b","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
execute if score @p[tag=evilPlayer] charType matches 3 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.enemy.evil_player.c","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
data modify entity @s CustomName set from block 84 26 -123 Text1
execute if score @p[tag=evilPlayer] charType matches 1 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.short_name.enemy.evil_player.a","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
execute if score @p[tag=evilPlayer] charType matches 2 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.short_name.enemy.evil_player.b","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
execute if score @p[tag=evilPlayer] charType matches 3 run data merge block 84 26 -123 {Text1:'{"translate":"tbc.short_name.enemy.evil_player.c","color":"dark_purple","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=evilPlayer]","interpret":true}]}'}
data modify entity @s ArmorItems[0].tag.CustomName set from block 84 26 -123 Text1

execute at @s run tag @e[tag=charQEp1,sort=nearest,limit=1,distance=..2] add charTemp
execute at @s as @a[tag=evilPlayer,gamemode=adventure] run loot replace entity @e[type=armor_stand,tag=charTemp] armor.head loot glarth:custom/skull
execute at @s as @e[tag=charTemp,sort=nearest,limit=1] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute at @s as @e[tag=charTemp,sort=nearest,limit=1] run data remove entity @s ArmorItems[3]
tag @e remove charTemp
execute at @s as @e[tag=charQEp,sort=nearest,limit=2,distance=..2] run data merge entity @s {DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Head:[0f,0f,0f]},HasVisualFire:1b}

scoreboard players operation @s tbcHealth = @p[tag=evilPlayer] tbcHealth
scoreboard players operation @s tbcHealth *= 10 Const
scoreboard players operation @s tbcArmor = @p[tag=evilPlayer] tbcArmor
scoreboard players add @s tbcDodge 20
tag @s add death_032
tag @s add stage_077
tag @s add death_033

scoreboard players operation @s evilid = @p[tag=evilPlayer] playerid

scoreboard players operation @s charType = @p[tag=evilPlayer] charType

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcStrength 05
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcStrength 10
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 10
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcStrength 10
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 15
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcStrength 20

scoreboard players set @s tbcQueue 100

# Base
scoreboard players operation charBase Temp = @p[tag=evilPlayer] charBase
execute at @s if score charBase Temp matches 1 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:52}
execute at @s if score charBase Temp matches 2 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:53}
execute at @s if score charBase Temp matches 3 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:54}
execute at @s if score charBase Temp matches 4 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:55}
execute at @s if score charBase Temp matches 5 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:56}
execute at @s if score charBase Temp matches 6 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:93}
execute at @s if score charBase Temp matches 7 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:94}
execute at @s if score charBase Temp matches 8 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:95}
execute at @s if score charBase Temp matches 9 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:96}
execute at @s if score charBase Temp matches 10 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:97}
execute at @s if score charBase Temp matches 11 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:98}
execute at @s if score charBase Temp matches 12 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:99}
execute at @s if score charBase Temp matches 13 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:100}
execute at @s if score charBase Temp matches 14 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:101}
execute at @s if score charBase Temp matches 15 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:102}
execute at @s if score charBase Temp matches 16 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:103}
execute at @s if score charBase Temp matches 17 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:104}
execute at @s if score charBase Temp matches 18 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:105}
execute at @s if score charBase Temp matches 19 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:106}
execute at @s if score charBase Temp matches 20 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:107}
execute at @s if score charBase Temp matches 21 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:108}
execute at @s if score charBase Temp matches 22 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:109}
execute at @s if score charBase Temp matches 23 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:110}
execute at @s if score charBase Temp matches 24 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:111}
execute at @s if score charBase Temp matches 25 if score realms Stats matches 0 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:112}
execute at @s if score charBase Temp matches 25 unless score realms Stats matches 0 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:518}
execute at @s if score charBase Temp matches 26 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:113}
execute at @s if score charBase Temp matches 27 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:114}
execute at @s if score charBase Temp matches 28 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:115}
execute at @s if score charBase Temp matches 29 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:116}
execute at @s if score charBase Temp matches 30 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:117}
execute at @s if score charBase Temp matches 31 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:438}
execute at @s if score charBase Temp matches 32 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:439}
execute at @s if score charBase Temp matches 33 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:440}
execute at @s if score charBase Temp matches 34 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:441}
execute at @s if score charBase Temp matches 35 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:442}
execute at @s if score charBase Temp matches 36 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:443}
execute at @s if score charBase Temp matches 37 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:444}
execute at @s if score charBase Temp matches 38 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:445}
execute at @s if score charBase Temp matches 39 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:446}
execute at @s if score charBase Temp matches 40 run item replace entity @e[tag=charQEp1,sort=nearest,limit=1] armor.head with netherite_hoe{CustomModelData:447}

#Spawn
tag @s add tbcEvilPlayer
function glarth:combat/spawn

# overwrite default max health behaivor
scoreboard players set @s tbcMaxHealth 200