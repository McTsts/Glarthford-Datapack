function glarth:combat/menu/main_get_unlocked

execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:0}] if score 0_melee tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:0}] if score 0_melee tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 1
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] if score 1_staff tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] if score 1_staff tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 2
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:2}] if score 2_bow tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:2}] if score 2_bow tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 3
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:3}] if score 3_throwable tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:3}] if score 3_throwable tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 4
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:4}] if score 4_breakfree tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:4}] if score 4_breakfree tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 5
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:5}] if score 5_potion tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:5}] if score 5_potion tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 6
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:6}] if score 6_pouch tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:6}] if score 6_pouch tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 7
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] if score 8_options tbcUnlocked matches 0..2 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] if score 8_options tbcUnlocked matches 3 run scoreboard players set @s tbcMenuX 9

# Choose
tag @e[tag=tbcSelGlow] remove tbcSelGlow
execute as @s[nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 run scoreboard players set selRec tbcStats 0
execute as @s[nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 at @s positioned ~ ~1.7 ~ rotated as @s run function glarth:combat/menu/util/select_ray
execute if entity @e[tag=tbcEnemy,nbt={Glowing:1b}] as @e[tag=tbcEnemy,tag=!tbcPermaGlow] run data merge entity @s {Glowing:0}
execute as @s[nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 as @e[tag=tbcSelGlow] run data merge entity @s {Glowing:1}
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 if entity @e[tag=tbcSelGlow] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 if entity @e[tag=tbcSelGlow] run scoreboard players set @e[tag=tbcSelGlow] tbcSel 1
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 if entity @e[tag=tbcSelGlow] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 0..2 unless entity @e[tag=tbcSelGlow] at @s run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] if score 7_select tbcUnlocked matches 3 run function glarth:combat/selection