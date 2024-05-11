
# Do Ally Attack
execute unless score @s tbcStun matches 1.. unless score @s tbcBlindness matches 1.. run function glarth:combat/stage
execute unless entity @s[tag=tbcSkipThis] unless entity @s[tag=tbcIgnoreThis] unless score @s tbcStun matches 1.. unless score @s tbcBlindness matches 1.. run function glarth:combat/attack_ally
execute if entity @s[tag=tbcSkipThis] run function glarth:combat/action_ally/006_init
tag @s remove tbcSkipThis
tag @s remove tbcIgnoreThis

data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:1,CustomName:"[{\"text\":\"|| \",\"color\":\"red\",\"bold\":true},{\"translate\":\"tbc.selected\",\"bold\":true,\"color\":\"gray\"},{\"text\":\" ||\",\"color\":\"red\",\"bold\":true}]"}

execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] run function glarth:combat/done
