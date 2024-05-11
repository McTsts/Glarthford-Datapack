#
execute if score @s tbc_fireworkTi matches 1..20 run scoreboard players add @s tbc_fireworkTi 1
execute if score @s tbc_fireworkTi matches 1 at @e[scores={tbcID=1}] run tp @s ~ ~1 ~
execute if score @s tbc_fireworkTi matches 2..20 run tp @s ~ ~.5 ~

execute if score @s tbc_fireworkTi matches 20 at @e[tag=tbcTargetAS] run tp @s ~ ~30 ~
execute if entity @s[tag=tbc_dropFirework] run scoreboard players add @s tbc_fireworkTi 1
execute if score @s tbc_fireworkTi matches 22 at @e[tag=tbcTargetAS] run tp @s ~ ~10.5 ~
execute if score @s tbc_fireworkTi matches 23..40 run tp @s ~ ~-.5 ~
execute if score @s tbc_fireworkTi matches 26 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init

execute if score @s tbc_fireworkTi matches 40 run playsound minecraft:entity.firework_rocket.blast hostile @a ~ ~ ~ 1000 1.4
execute if score @s tbc_fireworkTi matches 34 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbc_fireworkTi matches 39 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbc_fireworkTi matches 40 run scoreboard players set damage tbcStats 20
execute if score @s tbc_fireworkTi matches 40 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbc_fireworkTi matches 40 run kill @s
