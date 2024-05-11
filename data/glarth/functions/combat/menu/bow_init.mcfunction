## Attack Options
# A: Bow Type
# B: Bow Strength
# C: Bow Fire
# D: Arrow Amount
function glarth:combat/menu/param/reset
# Bow
execute if data storage glarth:main combat.turn.all[{id:"minecraft:bow",tag:{bow:"default"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 0
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Crossbow
execute if data storage glarth:main combat.turn.all[{id:"minecraft:crossbow",tag:{bow:"crossbow"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 0
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Dockmaster Bow
execute if data storage glarth:main combat.turn.all[{id:"minecraft:bow",tag:{bow:"dockmaster"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Crossbow Multi
execute if data storage glarth:main combat.turn.all[{id:"minecraft:crossbow",tag:{bow:"crossbow_multi"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 0
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift

# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/bow_item

## Back
item replace entity @s hotbar.8 with minecraft:diamond_hoe{display:{Name:"{\"translate\":\"tbc.attack.return\",\"italic\":false,\"bold\":true,\"color\":\"red\"}"},HideFlags:63,Damage:242,Unbreakable:1}

scoreboard players operation arrows tbcStats = @s tbcArrow
execute if score arrows tbcStats matches 256.. run scoreboard players set arrows tbcStats 256
execute if score arrows tbcStats matches 1.. run function glarth:combat/menu/bow_arrow
execute if score arrows tbcStats matches 1.. run function glarth:combat/menu/bow_arrow
execute if score arrows tbcStats matches 1.. run function glarth:combat/menu/bow_arrow
execute if score arrows tbcStats matches 1.. run function glarth:combat/menu/bow_arrow



