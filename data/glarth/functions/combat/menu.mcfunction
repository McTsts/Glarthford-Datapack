execute if score @s tbcMenu matches 0.. unless entity @s[nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run tag @s add tbcApplyMenu
execute if score @s tbcMenu matches 0.. if score @s tbcDrop matches 1 run tag @s add tbcApplyMenu
scoreboard players set @s tbcDrop 0

# -1 Empty
# 0 Main
# 1 Melee; 2 Staff; 3 Bow
# 100 Block; 101 Empty; 102 Nothing
execute as @s[tag=tbcApplyMenu] run clear @s
execute as @s[tag=tbcApplyMenu] run function glarth:combat/armor
execute as @s[tag=tbcApplyMenu] if score @s tbcMenu matches 0.. run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[custom_name='""']
execute as @s[tag=tbcApplyMenu] at @s run kill @e[type=item,distance=..3]
execute as @s[scores={tbcMenu=0},tag=tbcApplyMenu] run function glarth:combat/menu/main_init
execute as @s[scores={tbcMenu=1},tag=tbcApplyMenu] run function glarth:combat/menu/melee_init
execute as @s[scores={tbcMenu=2},tag=tbcApplyMenu] run function glarth:combat/menu/staff_init
execute as @s[scores={tbcMenu=3},tag=tbcApplyMenu] run function glarth:combat/menu/bow_init
execute as @s[scores={tbcMenu=4},tag=tbcApplyMenu] run function glarth:combat/menu/throwable_init
execute as @s[scores={tbcMenu=5},tag=tbcApplyMenu] run function glarth:combat/menu/breakfree_init
execute as @s[scores={tbcMenu=6},tag=tbcApplyMenu] run function glarth:combat/menu/potion_init
execute as @s[scores={tbcMenu=7},tag=tbcApplyMenu] run function glarth:combat/menu/pouch_init
execute as @s[scores={tbcMenu=9},tag=tbcApplyMenu] run function glarth:combat/menu/options_init
execute as @s[scores={tbcMenu=100},tag=tbcApplyMenu] run function glarth:combat/menu/block_init
execute as @s[scores={tbcMenu=101},tag=tbcApplyMenu] run function glarth:combat/menu/empty_init
execute as @s[tag=tbcApplyMenu] if score @s tbcMenu matches 0.. run function glarth:combat/menu/util/fill
execute as @s[scores={tbcMenu=0}] run function glarth:combat/menu/main
execute as @s[scores={tbcMenu=1}] run function glarth:combat/menu/melee
execute as @s[scores={tbcMenu=2}] run function glarth:combat/menu/staff
execute as @s[scores={tbcMenu=3}] run function glarth:combat/menu/bow
execute as @s[scores={tbcMenu=4}] run function glarth:combat/menu/throwable
execute as @s[scores={tbcMenu=5}] run function glarth:combat/menu/breakfree
execute as @s[scores={tbcMenu=6}] run function glarth:combat/menu/potion
execute as @s[scores={tbcMenu=7}] run function glarth:combat/menu/pouch
execute as @s[scores={tbcMenu=9}] run function glarth:combat/menu/options
execute as @s[scores={tbcMenu=100}] run function glarth:combat/menu/block
execute as @s[scores={tbcMenu=101}] run function glarth:combat/menu/empty
execute as @s[scores={tbcMenu=102}] run function glarth:combat/menu/empty

tag @s remove tbcApplyMenu
execute if score @s tbcMenuX matches -1.. run scoreboard players operation @s tbcMenu = @s tbcMenuX
execute if score @s tbcMenuX matches -1.. run tag @s add tbcApplyMenu
execute if score @s tbcMenuX matches -1.. run scoreboard players reset @s tbcMenuX
scoreboard players set @s tbcCarrot 0


# pumpkin fix
item replace entity @a[scores={tbcPumpkin=1..}] armor.head with minecraft:carved_pumpkin[custom_name='""',enchantments={levels:{binding_curse:1},show_in_tooltip:0b},custom_model_data=1,hide_additional_tooltip={}]