## Back
item replace entity @s hotbar.8 with minecraft:diamond_hoe[custom_name='{"translate":"tbc.attack.return","italic":false,"bold":true,"color":"red"}',damage=242,unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]

# Tip
execute as @s[tag=!tip37,tag=playedOnce] run function glarth:mechanic/tip/37

## Attack Options
# A: Staff Type [1 - 10]
# B: Staff Level [1; 2]
# C: Staff Element [0: Damage; 1: Water; 2: Fire; 3: Air; 4: Earth; 5: Old, 6: Poison, 7: Bee]
# D: Unused
function glarth:combat/menu/param/reset
# Damage Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:243}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 0
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Water Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:245}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Fire Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:247}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Poison Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{CustomModelData:386}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 12
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Earth Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:251}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 9
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Bee Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{CustomModelData:387}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 13
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 7
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Wind Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:249}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Chaos Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:244}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 0
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Darkness Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:252}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Inferno Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:248}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Pollution Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{CustomModelData:390}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 14
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Angry Bee Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{CustomModelData:391}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 15
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 7
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Thunder Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:250}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 8
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Ice Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{Damage:246}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Old Staff
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{CustomModelData:141}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 11
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift

# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/staff_item