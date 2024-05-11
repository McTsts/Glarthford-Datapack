scoreboard players add @s action 1
execute if score @s action matches 1..20 facing 71 27 -250 run tp @s ^ ^ ^0.1
execute if score @s action matches 30 facing 71 27 -250 run setblock 71 28 -249 air destroy
execute if score @s action matches 30 facing 71 27 -250 run fill 69 36 -248 72 28 -251 air
execute if score @s action matches 30 facing 71 27 -250 run fill 72 31 -248 72 32 -248 minecraft:spruce_leaves
execute if score @s action matches 30 facing 71 27 -250 run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 10 0.5
execute if score @s action matches 30 facing 71 27 -250 run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 10 0.5
execute if score @s action matches 30 facing 71 27 -250 run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 10 0.5
execute if score @s action matches 30 facing 71 27 -250 run summon minecraft:armor_stand 71 31 -249 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:141}}],NoGravity:1,Rotation:[180f,0f],Tags:["tree1","die"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1}
execute if score @s action matches 71..90 facing 73 27 -252 run tp @s ^ ^ ^0.1

