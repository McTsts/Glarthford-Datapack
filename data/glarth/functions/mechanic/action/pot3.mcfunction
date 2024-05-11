scoreboard players remove @s PoT3 1
execute as @s[scores={PoT3=100..}] run scoreboard players add storm Stats 1
execute as @s[scores={PoT3=99..99}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT3=99..99}] at @s run summon item ~ ~ ~ {Item:{id:"diamond_hoe",Count:1,tag:{Damage:249,display:{Name:'{"translate":"tbc.attack.staff.wind_staff","italic":false}',Lore:['""','{"translate":"item.modifiers.tbc","italic":false,"color":"gray"}','[" ",{"translate":"tbc.attack.msg.name.damage","color":"dark_green","italic":false,"with":[{"translate":"tbc.attack.msg.name.damage.low"}]}]','[" ",{"translate":"tbc.attack.msg.name.stun","color":"dark_green","italic":false,"with":[{"translate":"tbc.attack.msg.name.damage.short"}]}]']},Unbreakable:1,HideFlags:63}},Tags:["wind_staff"],Motion:[0.0,1.0,0.0]}
execute as @s[scores={PoT3=99..99}] at @s run spreadplayers ~ ~ 1 7 false @e[tag=wind_staff,type=item]
execute as @s[scores={PoT3=99..99}] as @e[tag=wind_staff,type=item] at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-2 ~
execute as @s[scores={PoT3=99..99}] as @e[tag=wind_staff,type=item] at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-2 ~
execute as @s[scores={PoT3=99..99}] run tellraw @a {"translate":"tip.PoT3","color":"green","italic":true}
#execute as @s[scores={PoT3=1..10}] run tp @s ~ ~ ~ ~ ~-1
#execute as @s[scores={PoT3=11..20}] run tp @s ~ ~ ~ ~ ~2
#execute as @s[scores={PoT3=21..30}] run tp @s ~ ~ ~ ~ ~-3
#execute as @s[scores={PoT3=31..40}] run tp @s ~ ~ ~ ~ ~4
#execute as @s[scores={PoT3=41..50}] run tp @s ~ ~ ~ ~ ~-5
#execute as @s[scores={PoT3=51..60}] run tp @s ~ ~ ~ ~ ~6
#execute as @s[scores={PoT3=61..70}] run tp @s ~ ~ ~ ~ ~-7
#execute as @s[scores={PoT3=71..80}] run tp @s ~ ~ ~ ~ ~8
#execute as @s[scores={PoT3=81..90}] run tp @s ~ ~ ~ ~ ~-9
#execute as @s[scores={PoT3=91..}] run tp @s ~ ~ ~ ~ ~10
execute as @s[scores={PoT3=99..99}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT3=99..99}] run effect give @s nausea 10 0 true
execute as @s[scores={PoT3=50..100}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 1
execute as @s[scores={PoT3=50..90}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 2
execute as @s[scores={PoT3=50..81}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 4
execute as @s[scores={PoT3=50..73}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 8
execute as @s[scores={PoT3=50..65}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 16
execute as @s[scores={PoT3=50..57}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0 32
execute as @s[scores={PoT3=50..50}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT3=50..50}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT3=30..50}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=30..45}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 2
execute as @s[scores={PoT3=30..40}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 4
execute as @s[scores={PoT3=30..35}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 8
execute as @s[scores={PoT3=30..32}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 16
execute as @s[scores={PoT3=30..30}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 2
execute as @s[scores={PoT3=30..30}] run effect give @s blindness 1 0 true
execute as @s[scores={PoT3=0..30}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..25}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..20}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..25}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..20}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..15}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..10}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=0..5}] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 1 1
execute as @s[scores={PoT3=1..1}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 0
execute as @s[scores={PoT3=1..1}] run effect clear @s nausea
#execute as @s[scores={PoT3=0..0}] run tp @s ~ ~ ~ ~ 0
execute as @s[scores={PoT3=1..65}] run scoreboard players add storm Stats 1