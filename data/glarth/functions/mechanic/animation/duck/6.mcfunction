execute as @s[tag=duck6,scores={Animation=0..50}] at @s run tp @s ^ ^-0.015 ^0.04 ~ ~
execute as @s[tag=duck6,scores={Animation=51..100}] at @s run tp @s ^ ^-0.022 ^0.045 ~ ~
execute as @s[tag=duck6,scores={Animation=101..203}] at @s run tp @s ^ ^-0.026 ^0.05 ~ ~
execute as @s[tag=duck6,scores={Animation=203}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":166}}]}
execute as @s[tag=duck6,scores={Animation=203..240}] at @s run tp @s ^ ^ ^0.03 ~-2 ~
execute as @s[tag=duck6,scores={Animation=241..380}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck6,scores={Animation=381..420}] at @s run tp @s ^ ^ ^0.03 ~2 ~
execute as @s[tag=duck6,scores={Animation=421..550}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck6,scores={Animation=551..600}] at @s run tp @s ^ ^ ^0.03 ~0.66 ~
execute as @s[tag=duck6,scores={Animation=601..1000}] at @s run tp @s ^ ^ ^0.03 ~ ~
execute as @s[tag=duck6,scores={Animation=203..1000}] at @s if entity @a[distance=..15,gamemode=adventure] run function glarth:mechanic/animation/duck/bob
execute as @s[tag=duck6,scores={Animation=1000}] at @s run function glarth:mechanic/animation/duck/fly
execute as @s[tag=duck6,scores={Animation=1001..1050}] at @s run tp @s ^ ^0.02 ^0.03
execute as @s[tag=duck6,scores={Animation=1051..1100}] at @s run tp @s ^ ^0.03 ^0.04
execute as @s[tag=duck6,scores={Animation=1101..1200}] at @s run tp @s ^ ^0.035 ^0.05
execute as @s[tag=duck6,scores={Animation=1201..1500}] at @s run tp @s ^ ^0.04 ^0.06
execute as @s[tag=duck6,scores={Animation=1501..1800}] at @s run tp @s ^ ^0.045 ^0.07
execute as @s[tag=duck6,scores={Animation=1800}] at @s run tag @s add die
function glarth:mechanic/animation/duck/sound_one