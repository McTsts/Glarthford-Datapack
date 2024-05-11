## Back
replaceitem entity @s hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"translate\":\"tbc.attack.return\",\"italic\":false,\"bold\":true,\"color\":\"red\"}"},HideFlags:63,Damage:242,Unbreakable:1}

## Attack Options
# A: Potion Type
# B: 
# C: 
# D: 
function glarth:combat/menu/param/reset
# Leaping Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{custom:"leaping"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Swiftness Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{custom:"swiftness"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Fire Resistance Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{custom:"fire_resistance"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Energizing Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{custom:"energizing_potion"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Healing Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{Potion:"minecraft:healing"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Strong Healing Potion
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{Potion:"minecraft:strong_healing"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Water
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Milk
execute if data storage glarth:main combat.turn.all[{id:"minecraft:gold_nugget",tag:{custom:"milk_bottle"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 8
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Unshift
function glarth:combat/menu/param/unshift


## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/potion_item_pre
function glarth:combat/menu/potion_item