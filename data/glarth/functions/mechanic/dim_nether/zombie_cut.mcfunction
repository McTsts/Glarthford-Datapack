execute if entity @s[tag=h,tag=!i] if entity @a[distance=..4,gamemode=adventure] run scoreboard players set @s action 0
execute if entity @s[tag=h,tag=!i] if entity @a[distance=..4,gamemode=adventure] run tag @s add doI
execute if entity @s[tag=h,tag=!i] if entity @a[distance=..4,gamemode=adventure] run tag @s add i

execute if entity @s[tag=doI] run scoreboard players add @s action 1
execute if entity @s[tag=doI] if score @s action matches 1..200 as @e[tag=piglin] run function glarth:mechanic/dim_nether/do_shake
execute if entity @s[tag=doI] if score @s action matches 10 run tag @e[tag=events] add nether5
execute if entity @s[tag=doI] if score @s action matches 50 at @e[tag=piglin2] run function glarth:dialogue/piglin2/lines/zombie
execute if entity @s[tag=doI] if score @s action matches 100 at @e[tag=piglin1] run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=doI] if score @s action matches 100 at @e[tag=piglin1] run particle minecraft:spit ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=doI] if score @s action matches 100 as @e[tag=piglin1] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=483]
execute if entity @s[tag=doI] if score @s action matches 100 as @e[tag=piglin1] run data merge entity @s {CustomName:'{"translate":"piglin1z","color":"light_purple"}'}
execute if entity @s[tag=doI] if score @s action matches 100 as @e[tag=piglin1] run tag @s add z
execute if entity @s[tag=doI] if score @s action matches 100 as @e[tag=piglin1] run tag @s remove piglin
execute if entity @s[tag=doI] if score @s action matches 120 at @e[tag=piglin3] run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=doI] if score @s action matches 120 at @e[tag=piglin3] run particle minecraft:spit ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=doI] if score @s action matches 120 as @e[tag=piglin3] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=484]
execute if entity @s[tag=doI] if score @s action matches 120 as @e[tag=piglin3] run data merge entity @s {CustomName:'{"translate":"piglin3z","color":"light_purple"}'}
execute if entity @s[tag=doI] if score @s action matches 120 as @e[tag=piglin3] run tag @s add z
execute if entity @s[tag=doI] if score @s action matches 120 as @e[tag=piglin3] run tag @s remove piglin
execute if entity @s[tag=doI] if score @s action matches 140 at @e[tag=piglin4] run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=doI] if score @s action matches 140 at @e[tag=piglin4] run particle minecraft:spit ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=doI] if score @s action matches 140 as @e[tag=piglin4] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=485]
execute if entity @s[tag=doI] if score @s action matches 140 as @e[tag=piglin4] run data merge entity @s {CustomName:'{"translate":"piglin4z","color":"light_purple"}'}
execute if entity @s[tag=doI] if score @s action matches 140 as @e[tag=piglin4] run tag @s add z
execute if entity @s[tag=doI] if score @s action matches 140 as @e[tag=piglin4] run tag @s remove piglin
execute if entity @s[tag=doI] if score @s action matches 160 at @e[tag=piglin5] run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=doI] if score @s action matches 160 at @e[tag=piglin5] run particle minecraft:spit ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=doI] if score @s action matches 160 as @e[tag=piglin5] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=486]
execute if entity @s[tag=doI] if score @s action matches 160 as @e[tag=piglin5] run data merge entity @s {CustomName:'{"translate":"piglin5z","color":"light_purple"}'}
execute if entity @s[tag=doI] if score @s action matches 160 as @e[tag=piglin5] run tag @s add z
execute if entity @s[tag=doI] if score @s action matches 160 as @e[tag=piglin5] run tag @s remove piglin
execute if entity @s[tag=doI] if score @s action matches 180 at @e[tag=piglin2] run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=doI] if score @s action matches 180 at @e[tag=piglin2] run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=doI] if score @s action matches 180 at @e[tag=piglin2] run particle minecraft:spit ~ ~0.5 ~ 0.5 0.5 0.5 0 10
execute if entity @s[tag=doI] if score @s action matches 180 at @e[tag=piglin2] run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.3 50
execute if entity @s[tag=doI] if score @s action matches 180 as @e[tag=piglin2] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=475]
execute if entity @s[tag=doI] if score @s action matches 180 as @e[tag=piglin2] run tag @s add z
execute if entity @s[tag=doI] if score @s action matches 180 as @e[tag=piglin2] run tag @s remove piglin
execute if entity @s[tag=doI] if score @s action matches 200 run tag @s remove doI