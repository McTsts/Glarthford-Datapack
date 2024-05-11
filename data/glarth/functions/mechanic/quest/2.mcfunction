execute as @e[tag=skeleton_boss,type=skeleton] run function glarth:combat/boss_pve/sk/skmain
execute as @e[tag=area_main,type=area_effect_cloud] run function glarth:mechanic/quest/ruby
function glarth:mechanic/mines/main
execute as @e[tag=party_torch,sort=random,limit=1,type=armor_stand] at @s positioned ~ ~0.7 ~ run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

# Progress Tracker New
execute positioned 81 32 -186 run tag @a[distance=..7] add enteredMines