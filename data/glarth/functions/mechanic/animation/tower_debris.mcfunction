scoreboard players set r Random 3
function glarth:util/random
execute if score n Random matches 1..2 run scoreboard players set n Random 0
execute if score n Random matches 3 run scoreboard players set r Random 32
execute if score n Random matches 3 run function glarth:util/randomish
execute if score n Random matches 1 run summon minecraft:falling_block -5.00 34.43 -186.32 {Motion:[0.25,0.5,-0.25],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 2 run summon minecraft:falling_block -6.60 34.11 -186.00 {Motion:[-0.25,0.5,-0.25],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 3 run summon minecraft:falling_block -4.25 35.00 -185.38 {Motion:[-0.1,0.5,-0.25],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 4 run summon minecraft:falling_block -4.23 35.00 -185.73 {Motion:[0.3,0.7,0.25],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 5 run summon minecraft:falling_block -4.44 34.00 -182.44 {Motion:[-0.3,0.7,0.25],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 6 run summon minecraft:falling_block -6.55 34.50 -183.25 {Motion:[0.1,0.7,0.4],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 7 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,0.1],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 8 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,-0.1],Time:1,BlockState:{Name:"spruce_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 9 run summon minecraft:falling_block -5.00 34.43 -186.32 {Motion:[0.25,0.5,-0.25],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 10 run summon minecraft:falling_block -6.6 34.11 -186.0 {Motion:[-0.25,0.5,-0.25],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 11 run summon minecraft:falling_block -4.25 35 -185.38 {Motion:[-0.1,0.5,-0.25],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 12 run summon minecraft:falling_block -4.23 35.00 -185.73 {Motion:[0.3,0.7,0.25],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 13 run summon minecraft:falling_block -4.44 34.00 -182.44 {Motion:[-0.3,0.7,0.25],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 14 run summon minecraft:falling_block -6.55 34.50 -183.25 {Motion:[0.1,0.7,0.4],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 15 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,0.1],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 16 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,-0.1],Time:1,BlockState:{Name:"dark_oak_planks"},Tags:["falling_block_kill"]}
execute if score n Random matches 17 run summon minecraft:falling_block -5.00 34.43 -186.32 {Motion:[0.25,0.5,-0.25],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 18 run summon minecraft:falling_block -6.60 34.11 -186.00 {Motion:[-0.25,0.5,-0.25],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 19 run summon minecraft:falling_block -4.25 35.00 -185.38 {Motion:[-0.1,0.5,-0.25],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 20 run summon minecraft:falling_block -4.23 35.00 -185.73 {Motion:[0.3,0.7,0.25],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 21 run summon minecraft:falling_block -4.44 34.00 -182.44 {Motion:[-0.3,0.7,0.25],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 22 run summon minecraft:falling_block -6.55 34.50 -183.25 {Motion:[0.1,0.7,0.4],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 23 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,0.1],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 24 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,-0.1],Time:1,BlockState:{Name:"spruce_log"},Tags:["falling_block_kill"]}
execute if score n Random matches 25 run summon minecraft:falling_block -5.00 34.43 -186.32 {Motion:[0.25,0.5,-0.25],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 26 run summon minecraft:falling_block -6.60 34.11 -186.00 {Motion:[-0.25,0.5,-0.25],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 27 run summon minecraft:falling_block -4.25 35.00 -185.38 {Motion:[-0.1,0.5,-0.25],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 28 run summon minecraft:falling_block -4.23 35.00 -185.73 {Motion:[0.3,0.7,0.25],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 29 run summon minecraft:falling_block -4.44 34.00 -182.44 {Motion:[-0.3,0.7,0.25],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 30 run summon minecraft:falling_block -6.55 34.50 -183.25 {Motion:[0.1,0.7,0.4],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 31 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,0.1],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}
execute if score n Random matches 32 run summon minecraft:falling_block -5.54 34.50 -183.61 {Motion:[-0.4,0.7,-0.1],Time:1,BlockState:{Name:"cobblestone"},Tags:["falling_block_kill"]}