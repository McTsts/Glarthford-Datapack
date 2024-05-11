execute as @s[tag=duck4,scores={Animation=0..200}] at @s run tp @s ^ ^-0.015 ^0.04 ~ ~
execute as @s[tag=duck4,scores={Animation=201..400}] at @s run tp @s ^ ^-0.02 ^0.045 ~ ~
execute as @s[tag=duck4,scores={Animation=401..595}] at @s run tp @s ^ ^-0.025 ^0.05 ~ ~
execute as @s[tag=duck4,scores={Animation=595}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:166}}]}
execute as @s[tag=duck4,scores={Animation=596..640}] at @s run tp @s ^ ^ ^0.03 ~2 ~
execute as @s[tag=duck4,scores={Animation=640..750}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck4,scores={Animation=596..}] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob
execute as @s[tag=duck4,scores={Animation=750}] at @s run tag @s add die
function glarth:mechanic/animation/duck/sound_one