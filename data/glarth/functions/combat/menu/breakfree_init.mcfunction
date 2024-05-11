## Attack Options
# A: Breakfree Type, B: Breakfree Count
function glarth:combat/menu/param/reset
# Hand
scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Shears
execute if score @s tbcPumpkin matches 1.. run scoreboard players set @s tbcCantMoveType 1
execute if score @s tbcCantMoveType matches 1 if data storage glarth:main combat.turn.all[{id:"minecraft:shears"}] run scoreboard players set S tbcAttackParamX 1
execute if score @s tbcCantMoveType matches 1 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score @s tbcCantMoveType matches 1 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score @s tbcCantMoveType matches 1 if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Torch
execute if score @s tbcCantMoveType matches 3 if data storage glarth:main combat.turn.all[{id:"minecraft:torch"}] run scoreboard players set S tbcAttackParamX 1
execute if score @s tbcCantMoveType matches 3 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score @s tbcCantMoveType matches 3 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score @s tbcCantMoveType matches 3 if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Stone Pickaxe
execute if score @s tbcCantMoveType matches 2 if data storage glarth:main combat.turn.all[{id:"minecraft:stone_pickaxe"}] run scoreboard players set S tbcAttackParamX 1
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Golden Pickaxe
execute if score @s tbcCantMoveType matches 2 if data storage glarth:main combat.turn.all[{id:"minecraft:golden_axe"}] run scoreboard players set S tbcAttackParamX 1
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Diamond Pickaxe
execute if score @s tbcCantMoveType matches 2 if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_pickaxe"}] run scoreboard players set S tbcAttackParamX 1
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score @s tbcCantMoveType matches 2 if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Chorus Fruit
execute if data storage glarth:main combat.turn.all[{id:"minecraft:gray_dye"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/breakfree_item_pre
function glarth:combat/menu/breakfree_item

## Back
replaceitem entity @s hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"translate\":\"tbc.attack.return\",\"italic\":false,\"bold\":true,\"color\":\"red\"}"},HideFlags:63,Damage:242,Unbreakable:1}