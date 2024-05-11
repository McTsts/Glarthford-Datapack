execute as @e[tag=phanterraNew,type=#glarth:phanterra] at @s run function glarth:mechanic/animation/phanterra/new
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=1}] at @s run function glarth:mechanic/animation/phanterra/hover
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=2}] at @s run function glarth:mechanic/animation/phanterra/hover_to_straighten
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=3}] at @s run function glarth:mechanic/animation/phanterra/straighten
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=4}] at @s run function glarth:mechanic/animation/phanterra/fly
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=5}] at @s run function glarth:mechanic/animation/phanterra/fly_to_unstraighten
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=6}] at @s run function glarth:mechanic/animation/phanterra/unstraighten
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=7}] at @s run function glarth:mechanic/animation/phanterra/fly_to_glide
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=8}] at @s run function glarth:mechanic/animation/phanterra/glide
execute as @e[tag=phanterra,type=#glarth:phanterra,scores={phanterraState=9}] at @s run function glarth:mechanic/animation/phanterra/glide_to_fly
execute as @e[tag=phanterra,type=armor_stand] run data modify entity @s ArmorItems[3].id set value "diamond_shovel"

execute as @e[tag=phanBob,type=armor_stand] at @s run function glarth:mechanic/animation/phanterra/bobing
execute as @e[tag=!phanBob,tag=phanBob_isBobbing,type=armor_stand] at @s run function glarth:mechanic/animation/phanterra/bobing