scoreboard players add @s Animation 1
execute as @e[tag=duck2a] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob
execute as @e[tag=duck2b] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob_small
execute if score @s Animation matches 3600 run tag @e[tag=duck2] add die
function glarth:mechanic/animation/duck/sound_several