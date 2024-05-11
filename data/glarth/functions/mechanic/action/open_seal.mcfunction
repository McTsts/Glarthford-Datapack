scoreboard players add @s action 1
execute as @s[scores={action=1..1}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 5 force @a
execute as @s[scores={action=1..1}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=11..11}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 5 force @a
execute as @s[scores={action=11..11}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=21..21}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 10 force @a
execute as @s[scores={action=21..21}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=27..27}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 10 force @a
execute as @s[scores={action=27..27}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=33..33}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 20 force @a
execute as @s[scores={action=33..33}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=35..35}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 20 force @a
execute as @s[scores={action=35..35}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=40..50}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.1 20 force @a
execute as @s[scores={action=51..60}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.2 30 force @a
execute as @s[scores={action=61..70}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 0.5 50 force @a
execute as @s[scores={action=71..80}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 1 100 force @a
execute as @s[scores={action=81..90}] at @s run particle block{block_state:{Name:"red_concrete"}} 70.0 27.5 -156 0.1 0.1 0.1 2 200 force @a
execute as @s[scores={action=40..90}] at @s run playsound minecraft:entity.enderdragon.hurt block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=91..91}] at @s run fill 70 28 -157 70 26 -155 air destroy
execute as @s[scores={action=91..91}] at @s run particle smoke 70 27.5 -156 1 1 1 0.2 100
execute as @s[scores={action=91..91}] at @s run particle cloud 70 27.5 -156 1 1 1 0.2 100
execute as @s[scores={action=91..91}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=91..91}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 1
execute as @s[scores={action=91..91}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 0.5 2
execute as @s[scores={action=91..91}] at @s run playsound minecraft:entity.wither.ambient block @a ~ ~ ~ 0.5 2
execute as @s[scores={action=91..91}] at @s run playsound minecraft:entity.wither.death block @a ~ ~ ~ 0.5 0
execute as @s[scores={action=100..100}] at @s run summon armor_stand ~ ~1.4 ~ {Tags:["char_msg"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"gray"}',NoGravity:1,Team:"gray"}
data merge entity @s[scores={action=110..160}] {Motion:[0.2d,-0.1d,0.0d]}