execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:0}] run scoreboard players set X tbcAttackParamX 0
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:1}] run scoreboard players set X tbcAttackParamX 1
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:2}] run scoreboard players set X tbcAttackParamX 2
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:3}] run scoreboard players set X tbcAttackParamX 3
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:4}] run scoreboard players set X tbcAttackParamX 4
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:5}] run scoreboard players set X tbcAttackParamX 5
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:6}] run scoreboard players set X tbcAttackParamX 6
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:7}] run scoreboard players set X tbcAttackParamX 7
execute as @s[scores={tbcCarrot=1..}] if score X tbcAttackParamX matches 0.. run function glarth:combat/menu/param/select