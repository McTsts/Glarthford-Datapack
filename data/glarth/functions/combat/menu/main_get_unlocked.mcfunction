# 0 -> Locked
# 1 -> Not Enough Stamina
# 2 -> Can't Move
# 3 -> Unlocked

# Stamina Fix
execute if score tbcUnlocked Stats matches ..1 run scoreboard players operation @s tbcStamina > 2 Const
execute if score tbcUnlocked Stats matches 5 run scoreboard players operation @s tbcStamina > 7 Const

## Default
scoreboard players set 0_melee tbcUnlocked 3
scoreboard players set 1_staff tbcUnlocked 3
scoreboard players set 2_bow tbcUnlocked 3
scoreboard players set 3_throwable tbcUnlocked 3
scoreboard players set 4_breakfree tbcUnlocked 3
scoreboard players set 5_potion tbcUnlocked 3
scoreboard players set 6_pouch tbcUnlocked 3
scoreboard players set 7_select tbcUnlocked 3
scoreboard players set 8_options tbcUnlocked 3

## Not Enough Stamina
execute if score @s tbcStamina matches ..1 run scoreboard players set 0_melee tbcUnlocked 1
execute if score @s tbcStamina matches ..4 run scoreboard players set 1_staff tbcUnlocked 1
execute if score @s tbcStamina matches ..3 run scoreboard players set 2_bow tbcUnlocked 1
execute if score @s tbcStamina matches ..2 run scoreboard players set 3_throwable tbcUnlocked 1
execute if score @s tbcStamina matches ..1 run scoreboard players set 4_breakfree tbcUnlocked 1

## Can't Move
execute if score @s tbcCantMove matches 1.. run scoreboard players set 0_melee tbcUnlocked 2
execute if score @s tbcCantMove matches 1.. run scoreboard players set 1_staff tbcUnlocked 2
execute if score @s tbcCantMove matches 1.. run scoreboard players set 2_bow tbcUnlocked 2
execute if score @s tbcCantMove matches 1.. run scoreboard players set 3_throwable tbcUnlocked 2
execute if score @s[tag=!tip39] tbcCantMove matches 1.. run function glarth:mechanic/tip/39
execute if score @s[tag=!tip39] tbcPumpkin matches 1.. run function glarth:mechanic/tip/39
execute unless score @s tbcCantMove matches 1.. unless score @s tbcPumpkin matches 1.. run scoreboard players set 4_breakfree tbcUnlocked 0

## Unlocked
# Melee
execute if score tbcUnlocked Stats matches ..-1 run scoreboard players set 0_melee tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4..6 run scoreboard players set 0_melee tbcUnlocked 0

# Staff
execute if score tbcUnlocked Stats matches ..1 run scoreboard players set 1_staff tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4 run scoreboard players set 1_staff tbcUnlocked 0
execute if score tbcUnlocked Stats matches 6 run scoreboard players set 1_staff tbcUnlocked 0

# Bow
execute if score tbcUnlocked Stats matches ..2 run scoreboard players set 2_bow tbcUnlocked 0
execute if score tbcUnlocked Stats matches 5..6 run scoreboard players set 2_bow tbcUnlocked 0

# Throwable
execute if score tbcUnlocked Stats matches ..2 run scoreboard players set 3_throwable tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4..5 run scoreboard players set 3_throwable tbcUnlocked 0

# Break Free

# Potion
execute if score tbcUnlocked Stats matches ..2 run scoreboard players set 5_potion tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4..6 run scoreboard players set 5_potion tbcUnlocked 0

# Pouch
execute if score tbcUnlocked Stats matches ..1 run scoreboard players set 6_pouch tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4..6 run scoreboard players set 6_pouch tbcUnlocked 0

# Select
execute if score tbcUnlocked Stats matches ..0 run scoreboard players set 7_select tbcUnlocked 0
execute if score tbcUnlocked Stats matches 4 run scoreboard players set 7_select tbcUnlocked 0
execute if score tbcUnlocked Stats matches 6 run scoreboard players set 7_select tbcUnlocked 0

# Options
execute if score tbcUnlocked Stats matches ..1 run scoreboard players set 8_options tbcUnlocked 0
execute if score tbcUnlocked Stats matches 5 run scoreboard players set 8_options tbcUnlocked 0
