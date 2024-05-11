## Back
item replace entity @s hotbar.8 with minecraft:diamond_hoe[custom_name='{"translate":"tbc.attack.return","italic":false,"bold":true,"color":"red"}',damage=242,unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]

## Attack Options
# A: Type
# B: Damage
# C: Effect
# D: Returns?
function glarth:combat/menu/param/reset

# Apple
execute if data storage glarth:main combat.turn.all[{id:"minecraft:apple"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Beetroot
execute if data storage glarth:main combat.turn.all[{id:"minecraft:beetroot"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Flint
execute if data storage glarth:main combat.turn.all[{id:"minecraft:flint"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Egg
execute if data storage glarth:main combat.turn.all[{id:"minecraft:egg"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 4
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Snowball
execute if data storage glarth:main combat.turn.all[{id:"minecraft:snowball"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Ink Sac
execute if data storage glarth:main combat.turn.all[{id:"minecraft:ink_sac"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 6
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Flour
execute if data storage glarth:main combat.turn.all[{id:"minecraft:scute"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 7
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Magma Cream
execute if data storage glarth:main combat.turn.all[{id:"minecraft:magma_cream"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 10
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 4
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Spider Eye
execute if data storage glarth:main combat.turn.all[{id:"minecraft:spider_eye"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 12
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Slime Ball
execute if data storage glarth:main combat.turn.all[{id:"minecraft:slime_ball"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 13
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 2
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 5
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Glow Ink Sac
execute if data storage glarth:main combat.turn.all[{id:"minecraft:glow_ink_sac"}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 16
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 2
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Mayor Tophat
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{custom:"tophat"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 if score @s tbcStamina matches 6.. run scoreboard players set 0 tbcAttackParamA 9
execute if score S tbcAttackParamX matches 1 if score @s tbcStamina matches ..5 run scoreboard players set 0 tbcAttackParamA 14
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Witch Hat
execute if data storage glarth:main combat.turn.all[{id:"minecraft:diamond_hoe",tag:{custom:"witchhat"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 if score @s tbcStamina matches 6.. run scoreboard players set 0 tbcAttackParamA 11
execute if score S tbcAttackParamX matches 1 if score @s tbcStamina matches ..5 run scoreboard players set 0 tbcAttackParamA 15
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 5
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamD 1
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift
# Bee Hive
execute if data storage glarth:main combat.turn.all[{id:"minecraft:gold_nugget",tag:{custom:"bee_hive"}}] run scoreboard players set S tbcAttackParamX 1
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamA 8
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamB 3
execute if score S tbcAttackParamX matches 1 run scoreboard players set 0 tbcAttackParamC 3
execute if score S tbcAttackParamX matches 1 run function glarth:combat/menu/param/shift


# Unshift
function glarth:combat/menu/param/unshift

## Items
scoreboard players set X tbcAttackParamX 0
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 1
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 2
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 3
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 4
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 5
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 6
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item
scoreboard players set X tbcAttackParamX 7
function glarth:combat/menu/param/select
function glarth:combat/menu/throwable_item_pre
function glarth:combat/menu/throwable_item