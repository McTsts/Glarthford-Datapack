## Attack Options
# A: Sword Type
# B: Sword Strength (x10)
# C: Sword Element
# D: Decreased Dodge Chance
function glarth:combat/menu/param/reset
# Hand
scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 14
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -25
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Wooden Hoe
execute if data storage glarth:main combat.turn.all[{id:"minecraft:wooden_hoe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -20
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Diamond Hoe
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{custom:"default"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 11
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -15
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Stone Pickaxe
execute if data storage glarth:main combat.turn.all[{id:"minecraft:stone_pickaxe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 30
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -10
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Golden Pickaxe
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_axe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 18
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 30
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Diamond Pickaxe
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_pickaxe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 30
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 20
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Stone Shovel
execute if data storage glarth:main combat.turn.all[{id:"minecraft:stone_shovel"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 35
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -10
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Wooden Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:wooden_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 40
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Iron Shovel
execute if data storage glarth:main combat.turn.all[{id:"minecraft:iron_shovel"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 15
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 45
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -10
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Stone Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:stone_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 50
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Diamond Shovel
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_shovel"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 13
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 55
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -10
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Ice Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_shovel"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 16
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 40
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 15
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Poison Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_pickaxe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 17
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 40
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 15
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Iron Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:iron_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 60
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Branch
execute if data storage glarth:main combat.turn.all[{id:"minecraft:wooden_axe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 12
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 70
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD -5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Diamond Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 8
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 70
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Holy Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 9
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 55
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 7
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Netherite Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:netherite_sword"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 19
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 80
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 15
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Magic Sword
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_hoe"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2000
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 100
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/melee_item

## Back
item replace entity @s hotbar.8 with minecraft:diamond_hoe[custom_name='{"translate":"tbc.attack.return","italic":false,"bold":true,"color":"red"}',damage=242,unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]