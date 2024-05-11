execute as @s[tag=duck3,scores={Animation=-99..160}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck3,scores={Animation=161..250}] at @s run tp @s ^ ^ ^0.03 ~-2 ~
execute as @s[tag=duck3,scores={Animation=251..410}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck3,scores={Animation=411..500}] at @s run tp @s ^ ^ ^0.03 ~-2 ~
execute as @s[tag=duck3,scores={Animation=500},tag=duck3a] at @s run scoreboard players add duck3 Animation 1
execute as @s[tag=duck3,scores={Animation=500}] at @s run scoreboard players set @s Animation 0
execute as @e[tag=duck3a] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob
execute as @e[tag=duck3b] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob_small
execute if score duck3 Animation matches 10.. run tag @e[tag=duck3] add die
function glarth:mechanic/animation/duck/sound_several