scoreboard players remove @s PoT2 1
execute as @s[scores={PoT2=100..}] run scoreboard players set travel Dis 20
execute as @s[scores={PoT2=100..}] run function glarth:mechanic/travel_forwards
execute as @s[scores={PoT2=100..}] run function glarth:mechanic/time/forcetime
execute as @s[scores={PoT2=99..99}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT2=99..99}] run tellraw @a {"translate":"tip.PoT2","color":"green","italic":true}
#execute as @s[scores={PoT2=0..}] run tp @s ~ ~ ~ ~5 ~
#execute as @s[scores={PoT2=0..75}] run tp @s ~ ~ ~ ~10 ~
#execute as @s[scores={PoT2=0..50}] run tp @s ~ ~ ~ ~15 ~
#execute as @s[scores={PoT2=0..25}] run tp @s ~ ~ ~ ~20 ~
execute as @s[scores={PoT2=99..99}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT2=99..99}] run effect give @s nausea 10 0 true
execute as @s[scores={PoT2=50..100}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 1
execute as @s[scores={PoT2=50..90}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 2
execute as @s[scores={PoT2=50..81}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 4
execute as @s[scores={PoT2=50..73}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 8
execute as @s[scores={PoT2=50..65}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 16
execute as @s[scores={PoT2=50..57}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0 32
execute as @s[scores={PoT2=50..50}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT2=50..50}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT2=30..50}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=30..45}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 2
execute as @s[scores={PoT2=30..40}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 4
execute as @s[scores={PoT2=30..35}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 8
execute as @s[scores={PoT2=30..32}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 16
execute as @s[scores={PoT2=30..30}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT2=30..30}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT2=0..30}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..25}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..20}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..25}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..20}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..15}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..10}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=0..5}] run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT2=1..1}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 0
execute as @s[scores={PoT2=1..1}] run effect clear @s nausea
#execute as @s[scores={PoT2=0..0}] run tp @s ~ ~ ~ ~25 ~
execute as @s[scores={PoT2=1..65}] run scoreboard players set travel Dis 20
execute as @s[scores={PoT2=1..65}] run function glarth:mechanic/travel_forwards
execute as @s[scores={PoT2=1..65}] run function glarth:mechanic/time/forcetime
execute as @s[scores={PoT2=1..65}] run scoreboard players set doingPoT Stats 1
execute as @s[scores={PoT2=1..65}] if score wind Stats matches 0 run scoreboard players set millSpeed Animation 0
execute as @s[scores={PoT2=1..65}] if score wind Stats matches 1 run scoreboard players set millSpeed Animation 200
execute as @s[scores={PoT2=1..65}] if score wind Stats matches 2 run scoreboard players set millSpeed Animation 400
execute as @s[scores={PoT2=1..65}] if score wind Stats matches 3 run scoreboard players set millSpeed Animation 600
execute as @s[scores={PoT2=1..65}] unless entity @e[tag=events,tag=evgbC,type=area_effect_cloud] as @e[tag=mill,type=armor_stand] unless score quest Stats matches 9 run function glarth:mechanic/animation/mill