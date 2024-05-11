## Back
replaceitem entity @s hotbar.8 minecraft:diamond_hoe{display:{Name:"{\"translate\":\"tbc.attack.return\",\"italic\":false,\"bold\":true,\"color\":\"red\"}"},HideFlags:63,Damage:242,Unbreakable:1}

## Attack Options
# A: Type
# B: Stamina
# C: Extra Effect Chance [1-10]
# D: Extra Effect Type [1: Poison; 2: Infection; 3: Regeneration & Absorption, 4: Regen/Absor/FireRes]
function glarth:combat/menu/param/reset
# Spider Eye
execute if data storage glarth:main combat.turn.all[{id:"minecraft:spider_eye"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Poisonous Potato
execute if data storage glarth:main combat.turn.all[{id:"minecraft:poisonous_potato"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Rotten Flesh
execute if data storage glarth:main combat.turn.all[{id:"minecraft:rotten_flesh"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 8
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Chicken
execute if data storage glarth:main combat.turn.all[{id:"minecraft:chicken"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Beetroot
execute if data storage glarth:main combat.turn.all[{id:"minecraft:beetroot"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Potato
execute if data storage glarth:main combat.turn.all[{id:"minecraft:potato"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cookie
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cookie"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Sweet Berries
execute if data storage glarth:main combat.turn.all[{id:"minecraft:sweet_berries"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 29
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Mutton
execute if data storage glarth:main combat.turn.all[{id:"minecraft:mutton"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 8
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Cod
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cod"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 9
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Beef
execute if data storage glarth:main combat.turn.all[{id:"minecraft:beef"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Rabbit
execute if data storage glarth:main combat.turn.all[{id:"minecraft:rabbit"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 11
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Raw Porkchop
execute if data storage glarth:main combat.turn.all[{id:"minecraft:porkchop"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 12
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Carrot
execute if data storage glarth:main combat.turn.all[{id:"minecraft:carrot"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 13
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Chorus Fruit
execute if data storage glarth:main combat.turn.all[{id:"minecraft:gray_dye"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 27
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Apple
execute if data storage glarth:main combat.turn.all[{id:"minecraft:apple"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 14
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cooked Rabbit
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_rabbit"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 15
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Baked Potato
execute if data storage glarth:main combat.turn.all[{id:"minecraft:baked_potato"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 16
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Bread
execute if data storage glarth:main combat.turn.all[{id:"minecraft:bread"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 17
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cooked Cod
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_cod"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 18
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Golden Carrot
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_carrot"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 19
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cooked Chicken
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_chicken"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 20
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cooked Mutton
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_mutton"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 21
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 6
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Pumpkin Pie
execute if data storage glarth:main combat.turn.all[{id:"minecraft:pumpkin_pie"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 22
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 8
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Steak
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_beef"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 23
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 8
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Cooked Porkchop
execute if data storage glarth:main combat.turn.all[{id:"minecraft:cooked_porkchop"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 24
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Golden Apple
execute if data storage glarth:main combat.turn.all[{id:"minecraft:golden_apple"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 25
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Enchanted Golden Apple
execute if data storage glarth:main combat.turn.all[{id:"minecraft:enchanted_golden_apple"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 26
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift

# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/pouch_item_pre
function glarth:combat/menu/pouch_item